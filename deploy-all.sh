#!/bin/bash

# ==============================================================================
# Namaste Bali - Deploy All Projects
# ==============================================================================
# Deploys all three projects on the VPS:
#   1. namaste_bali_panel_api  (Python API)       - Port 8282
#   2. namaste-bali-trans      (Svelte Frontend)   - Port 3000
#   3. namaste_bali_panel      (Svelte Panel)      - Port 3001
#
# Usage:
#   ./deploy-all.sh              # Deploy all projects
#   ./deploy-all.sh --api        # Deploy only the API
#   ./deploy-all.sh --frontend   # Deploy only the frontend
#   ./deploy-all.sh --panel      # Deploy only the panel
#   ./deploy-all.sh --api --panel # Deploy API and panel only
# ==============================================================================

set -e

# ── VPS Project Paths (adjust if needed) ──────────────────────────────────────
API_DIR="/www/wwwroot/namaste_bali_panel_api"
FRONTEND_DIR="/www/wwwroot/namaste-bali-trans"
PANEL_DIR="/www/wwwroot/namaste-bali-panel"

# ── Container / Image Names ──────────────────────────────────────────────────
API_CONTAINER="namaste_bali_panel_api"
FRONTEND_CONTAINER="namaste_bali_trans"
PANEL_CONTAINER="namaste_bali_panel"

# ── Colors ────────────────────────────────────────────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# ── Helper Functions ──────────────────────────────────────────────────────────
print_header() {
    echo ""
    echo -e "${CYAN}══════════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}  $1${NC}"
    echo -e "${CYAN}══════════════════════════════════════════════════════════════${NC}"
    echo ""
}

print_step() {
    echo -e "${BLUE}▸ $1${NC}"
}

print_success() {
    echo -e "${GREEN}✔ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

print_error() {
    echo -e "${RED}✖ $1${NC}"
}

# ── Track Results ─────────────────────────────────────────────────────────────
API_STATUS="skipped"
FRONTEND_STATUS="skipped"
PANEL_STATUS="skipped"

# ── Parse Arguments ───────────────────────────────────────────────────────────
DEPLOY_API=false
DEPLOY_FRONTEND=false
DEPLOY_PANEL=false
DEPLOY_ALL=true

for arg in "$@"; do
    case $arg in
        --api)       DEPLOY_API=true;      DEPLOY_ALL=false ;;
        --frontend)  DEPLOY_FRONTEND=true; DEPLOY_ALL=false ;;
        --panel)     DEPLOY_PANEL=true;    DEPLOY_ALL=false ;;
        --help|-h)
            echo "Usage: ./deploy-all.sh [OPTIONS]"
            echo ""
            echo "Options:"
            echo "  --api        Deploy only the Python API"
            echo "  --frontend   Deploy only the Svelte frontend"
            echo "  --panel      Deploy only the Svelte panel"
            echo "  --help, -h   Show this help message"
            echo ""
            echo "If no options are specified, all projects will be deployed."
            exit 0
            ;;
        *)
            print_error "Unknown option: $arg"
            echo "Use --help for usage information."
            exit 1
            ;;
    esac
done

if $DEPLOY_ALL; then
    DEPLOY_API=true
    DEPLOY_FRONTEND=true
    DEPLOY_PANEL=true
fi

# ── Deploy Function: Docker container ─────────────────────────────────────────
deploy_docker_container() {
    local container_name=$1
    local build_args=$2

    if sudo docker ps -a --format '{{.Names}}' | grep -q "^${container_name}$"; then
        print_step "Stopping and removing existing container: ${container_name}"
        sudo docker stop "$container_name" && sudo docker rm "$container_name"
    fi

    print_step "Building Docker image: ${container_name}"
    sudo docker build -t "$container_name" .

    print_step "Starting container: ${container_name}"
    eval "sudo docker run $build_args"
}

# ══════════════════════════════════════════════════════════════════════════════
# 1. Deploy API (Python - FastAPI)
# ══════════════════════════════════════════════════════════════════════════════
if $DEPLOY_API; then
    print_header "1/3 — Deploying API (namaste_bali_panel_api)"

    if [ ! -d "$API_DIR" ]; then
        print_error "Directory not found: $API_DIR"
        API_STATUS="failed"
    else
        cd "$API_DIR"

        print_step "Pulling latest code..."
        sudo git pull origin main

        deploy_docker_container "$API_CONTAINER" \
            "-v ./uploads:/app/uploads --name $API_CONTAINER --env-file .env -p 8282:8080 -d $API_CONTAINER"

        if sudo docker ps --format '{{.Names}}' | grep -q "^${API_CONTAINER}$"; then
            print_success "API deployed successfully!"
            API_STATUS="success"
        else
            print_error "API container failed to start!"
            API_STATUS="failed"
        fi
    fi
fi

# ══════════════════════════════════════════════════════════════════════════════
# 2. Deploy Frontend (Svelte - namaste-bali-trans)
# ══════════════════════════════════════════════════════════════════════════════
if $DEPLOY_FRONTEND; then
    print_header "2/3 — Deploying Frontend (namaste_bali_trans)"

    if [ ! -d "$FRONTEND_DIR" ]; then
        print_error "Directory not found: $FRONTEND_DIR"
        FRONTEND_STATUS="failed"
    else
        cd "$FRONTEND_DIR"

        print_step "Pulling latest code..."
        sudo git pull origin main

        print_step "Installing npm dependencies..."
        sudo npm install

        print_step "Building Svelte app..."
        sudo npm run build

        deploy_docker_container "$FRONTEND_CONTAINER" \
            "--name $FRONTEND_CONTAINER --env-file .env -p 3000:3000 -d $FRONTEND_CONTAINER"

        if sudo docker ps --format '{{.Names}}' | grep -q "^${FRONTEND_CONTAINER}$"; then
            print_success "Frontend deployed successfully!"
            FRONTEND_STATUS="success"
        else
            print_error "Frontend container failed to start!"
            FRONTEND_STATUS="failed"
        fi
    fi
fi

# ══════════════════════════════════════════════════════════════════════════════
# 3. Deploy Panel (Svelte - namaste-bali-panel)
# ══════════════════════════════════════════════════════════════════════════════
if $DEPLOY_PANEL; then
    print_header "3/3 — Deploying Panel (namaste_bali_panel)"

    if [ ! -d "$PANEL_DIR" ]; then
        print_error "Directory not found: $PANEL_DIR"
        PANEL_STATUS="failed"
    else
        cd "$PANEL_DIR"

        print_step "Pulling latest code..."
        sudo git pull origin main

        print_step "Installing npm dependencies..."
        sudo npm install

        print_step "Building Svelte app..."
        sudo npm run build

        deploy_docker_container "$PANEL_CONTAINER" \
            "--name $PANEL_CONTAINER --env-file .env -p 3001:3001 -d $PANEL_CONTAINER"

        if sudo docker ps --format '{{.Names}}' | grep -q "^${PANEL_CONTAINER}$"; then
            print_success "Panel deployed successfully!"
            PANEL_STATUS="success"
        else
            print_error "Panel container failed to start!"
            PANEL_STATUS="failed"
        fi
    fi
fi

# ══════════════════════════════════════════════════════════════════════════════
# Summary
# ══════════════════════════════════════════════════════════════════════════════
print_header "Deployment Summary"

format_status() {
    case $1 in
        success) echo -e "${GREEN}✔ SUCCESS${NC}" ;;
        failed)  echo -e "${RED}✖ FAILED${NC}" ;;
        skipped) echo -e "${YELLOW}— SKIPPED${NC}" ;;
    esac
}

echo -e "  API      (port 8282) : $(format_status $API_STATUS)"
echo -e "  Frontend (port 3000) : $(format_status $FRONTEND_STATUS)"
echo -e "  Panel    (port 3001) : $(format_status $PANEL_STATUS)"
echo ""

# Exit with error if any deployment failed
if [ "$API_STATUS" = "failed" ] || [ "$FRONTEND_STATUS" = "failed" ] || [ "$PANEL_STATUS" = "failed" ]; then
    print_error "One or more deployments failed. Check the logs above."
    exit 1
else
    print_success "All done!"
    exit 0
fi
