#!/bin/bash

# ==============================================================================
# Namaste Bali - Deploy All Projects
# ==============================================================================

set -e

# Projects defined as associative mapping arrays would be nice, but for simplicity
# we'll map them explicitly.
API_DIR="/var/www/wwwroot/namaste_bali_panel_api"
FRONTEND_DIR="/var/www/wwwroot/namaste_bali_trans"
PANEL_DIR="/var/www/wwwroot/namaste_bali_panel"

API_CONTAINER="namaste_bali_panel_api"
MONGO_CONTAINER="namaste_bali_mongo"
FRONTEND_CONTAINER="namaste_bali_trans"
PANEL_CONTAINER="namaste_bali_panel"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m'

# ── Check & Install Prerequisites ─────────────────────────────────────────────
echo -e "${YELLOW}[0] Checking prerequisites...${NC}"

# Docker
if ! command -v docker &> /dev/null; then
    echo -e "${YELLOW}Docker not found. Installing...${NC}"
    apt update -y
    apt install -y docker.io
    systemctl enable docker
    systemctl start docker
    echo -e "${GREEN}✓ Docker installed.${NC}"
else
    echo -e "${GREEN}✓ Docker found: $(docker --version)${NC}"
fi

# Docker Compose (v2 plugin)
if ! docker compose version &> /dev/null; then
    echo -e "${YELLOW}Docker Compose not found. Installing...${NC}"
    apt install -y docker-compose-v2
    echo -e "${GREEN}✓ Docker Compose installed.${NC}"
else
    echo -e "${GREEN}✓ Docker Compose found: $(docker compose version --short)${NC}"
fi

# Node.js & npm
if ! command -v node &> /dev/null; then
    echo -e "${YELLOW}Node.js not found. Installing Node.js 22 LTS...${NC}"
    curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
    apt install -y nodejs
    echo -e "${GREEN}✓ Node.js installed: $(node --version)${NC}"
else
    echo -e "${GREEN}✓ Node.js found: $(node --version)${NC}"
fi

if ! command -v npm &> /dev/null; then
    echo -e "${RED}✗ npm still not found after Node.js install. Aborting.${NC}"
    exit 1
else
    echo -e "${GREEN}✓ npm found: $(npm --version)${NC}"
fi

echo ""

# Parse args
DEPLOY_API=false
DEPLOY_FRONTEND=false
DEPLOY_PANEL=false
DEPLOY_ALL=true
SEED_API=false

for arg in "$@"; do
    case $arg in
        --api)       DEPLOY_API=true;      DEPLOY_ALL=false ;;
        --frontend)  DEPLOY_FRONTEND=true; DEPLOY_ALL=false ;;
        --panel)     DEPLOY_PANEL=true;    DEPLOY_ALL=false ;;
        --seed)      SEED_API=true;        DEPLOY_API=true; DEPLOY_ALL=false ;;
        --help|-h)
            echo "Usage: ./deploy-all.sh [OPTIONS]"
            echo "Options:"
            echo "  --api        Deploy only the Python API"
            echo "  --frontend   Deploy only the Svelte frontend"
            echo "  --panel      Deploy only the Svelte panel"
            echo "  --seed       Deploy API, seed MongoDB and upload images to MinIO"
            exit 0
            ;;
    esac
done

if $DEPLOY_ALL; then
    DEPLOY_API=true
    DEPLOY_FRONTEND=true
    DEPLOY_PANEL=true
fi


echo -e "${YELLOW}======================================${NC}"
echo -e "${YELLOW}       Namaste Bali Deployment        ${NC}"
echo -e "${YELLOW}======================================${NC}"

# ==============================================================================
# 1. API
# ==============================================================================
if $DEPLOY_API; then
    echo -e "\n${CYAN}--- Deploying API ---${NC}"
    cd $API_DIR

    echo -e "${YELLOW}[1/4] Pulling latest changes from git...${NC}"
    if git pull origin main; then
        echo -e "${GREEN}✓ Git pull successful.${NC}"
    else
        echo -e "${RED}✗ Git pull failed! Aborting.${NC}"
        exit 1
    fi

    COMMIT=$(git rev-parse --short HEAD)
    echo -e "Current commit: ${GREEN}${COMMIT}${NC}"

    echo -e "\n${YELLOW}[2/4] Stopping existing containers...${NC}"
    docker compose down

    echo -e "\n${YELLOW}[3/4] Rebuilding and starting containers...${NC}"
    if docker compose up -d --build; then
        echo -e "${GREEN}✓ Containers started successfully.${NC}"
    else
        echo -e "${RED}✗ Deployment failed during build/start!${NC}"
        exit 1
    fi
    # Wait for MongoDB to be ready
    echo -e "\n${YELLOW}Waiting for MongoDB to be ready...${NC}"
    RETRIES=30
    until docker exec $MONGO_CONTAINER mongosh -u root -p root --authenticationDatabase admin --eval "quit(0)" &> /dev/null; do
        RETRIES=$((RETRIES - 1))
        if [ $RETRIES -eq 0 ]; then
            echo -e "${RED}✗ MongoDB did not become ready in time. Aborting.${NC}"
            exit 1
        fi
        echo -e "  MongoDB not ready yet, retrying in 2s... ($RETRIES retries left)"
        sleep 2
    done
    echo -e "${GREEN}✓ MongoDB is ready.${NC}"

    if $SEED_API; then
        echo -e "\n${YELLOW}[+] Seeding Database and Storage...${NC}"
        docker exec $MONGO_CONTAINER mongoimport -u root -p root --authenticationDatabase admin --db namaste_bali --collection destinations --file /seed/namaste_bali.destinations.json --jsonArray --drop
        docker exec $MONGO_CONTAINER mongoimport -u root -p root --authenticationDatabase admin --db namaste_bali --collection teams --file /seed/namaste_bali.teams.json --jsonArray --drop
        docker exec $MONGO_CONTAINER mongoimport -u root -p root --authenticationDatabase admin --db namaste_bali --collection users --file /seed/namaste_bali.users.json --jsonArray --drop
        echo -e "${GREEN}✓ MongoDB Seeded!${NC}"

        docker exec $API_CONTAINER python seed_minio.py
        echo -e "${GREEN}✓ MinIO Seeded!${NC}"
    fi

    echo -e "\n${YELLOW}[4/4] Checking container status...${NC}"
    docker compose ps
fi


# ==============================================================================
# 2. Frontend
# ==============================================================================
if $DEPLOY_FRONTEND; then
    echo -e "\n${CYAN}--- Deploying Frontend ---${NC}"
    cd $FRONTEND_DIR

    echo -e "${YELLOW}[1/4] Pulling latest changes from git...${NC}"
    if git pull origin main; then
        echo -e "${GREEN}✓ Git pull successful.${NC}"
    else
        echo -e "${RED}✗ Git pull failed! Aborting.${NC}"
        exit 1
    fi

    COMMIT=$(git rev-parse --short HEAD)
    echo -e "Current commit: ${GREEN}${COMMIT}${NC}"

    echo -e "\n${YELLOW}[2/4] Building Node App...${NC}"
    npm install
    npm run build

    echo -e "\n${YELLOW}[3/4] Rebuilding and starting container...${NC}"
    docker build -t $FRONTEND_CONTAINER .
    docker rm -f $FRONTEND_CONTAINER 2>/dev/null || true
    if docker run --name $FRONTEND_CONTAINER --env-file .env -p 3000:3000 -d $FRONTEND_CONTAINER; then
        echo -e "${GREEN}✓ Container started successfully.${NC}"
    else
        echo -e "${RED}✗ Deployment failed during start!${NC}"
        exit 1
    fi

    echo -e "\n${YELLOW}[4/4] Checking container status...${NC}"
    docker ps | grep $FRONTEND_CONTAINER
fi


# ==============================================================================
# 3. Panel
# ==============================================================================
if $DEPLOY_PANEL; then
    echo -e "\n${CYAN}--- Deploying Panel ---${NC}"
    cd $PANEL_DIR

    echo -e "${YELLOW}[1/4] Pulling latest changes from git...${NC}"
    if git pull origin main; then
        echo -e "${GREEN}✓ Git pull successful.${NC}"
    else
        echo -e "${RED}✗ Git pull failed! Aborting.${NC}"
        exit 1
    fi

    COMMIT=$(git rev-parse --short HEAD)
    echo -e "Current commit: ${GREEN}${COMMIT}${NC}"

    echo -e "\n${YELLOW}[2/4] Building Node App...${NC}"
    npm install
    npm run build

    echo -e "\n${YELLOW}[3/4] Rebuilding and starting container...${NC}"
    docker build -t $PANEL_CONTAINER .
    docker rm -f $PANEL_CONTAINER 2>/dev/null || true
    if docker run --name $PANEL_CONTAINER --env-file .env -p 3001:3001 -d $PANEL_CONTAINER; then
        echo -e "${GREEN}✓ Container started successfully.${NC}"
    else
        echo -e "${RED}✗ Deployment failed during start!${NC}"
        exit 1
    fi

    echo -e "\n${YELLOW}[4/4] Checking container status...${NC}"
    docker ps | grep $PANEL_CONTAINER
fi

echo -e "\n${GREEN}======================================${NC}"
echo -e "${GREEN}   Deployment Completed Successfully  ${NC}"
echo -e "${GREEN}======================================${NC}"
