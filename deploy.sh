#!/bin/bash

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${YELLOW}======================================${NC}"
echo -e "${YELLOW}  Namaste Bali Frontend Deployment Script ${NC}"
echo -e "${YELLOW}======================================${NC}"

# 1. Pull latest changes
echo -e "\n${YELLOW}[1/4] Pulling latest changes from git...${NC}"
if git pull origin main; then
    echo -e "${GREEN}✓ Git pull successful.${NC}"
else
    echo -e "${RED}✗ Git pull failed! Aborting.${NC}"
    exit 1
fi

# Show current commit
COMMIT=$(git rev-parse --short HEAD)
echo -e "Current commit: ${GREEN}${COMMIT}${NC}"

# 2. Build
echo -e "\n${YELLOW}[2/4] Building Node App...${NC}"
npm install
npm run build

# 3. Rebuild and start container
echo -e "\n${YELLOW}[3/4] Rebuilding and starting container...${NC}"
docker build -t namaste_bali_trans .
docker rm -f namaste_bali_trans 2>/dev/null || true
if docker run --name namaste_bali_trans --env-file .env -p 3000:3000 -d namaste_bali_trans; then
    echo -e "${GREEN}✓ Container started successfully.${NC}"
else
    echo -e "${RED}✗ Deployment failed during start!${NC}"
    exit 1
fi

# 4. Show status
echo -e "\n${YELLOW}[4/4] Checking container status...${NC}"
docker ps | grep namaste_bali_trans

echo -e "\n${GREEN}======================================${NC}"
echo -e "${GREEN}   Deployment Completed Successfully  ${NC}"
echo -e "${GREEN}======================================${NC}"
