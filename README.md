# Namaste Bali Deploy Script

This repository tracks the main automated deployment script for the entire Namaste Bali application stack on the VPS.

## 🚀 Projects Managed

The script orchestrates the deployment of three interconnected projects:

1. **Python API (`namaste_bali_panel_api`)**
   - Runs on port `8282`
   - Uses FastAPI, MongoDB, and MinIO for object storage 
   - Directory: `/www/wwwroot/namaste_bali_panel_api`

2. **Svelte Frontend (`namaste-bali-trans`)**
   - Runs on port `3000`
   - Customer-facing website
   - Directory: `/www/wwwroot/namaste-bali-trans`

3. **Svelte Panel (`namaste_bali_panel`)**
   - Runs on port `3001`
   - Admin dashboard for managing destinations, teams, and orders
   - Directory: `/www/wwwroot/namaste-bali-panel`

---

## 🛠️ Usage

Run the script from the terminal on your VPS:

```bash
./deploy-all.sh [OPTIONS]
```

### Options Overview

| Flag | Description |
|---|---|
| *(No flags)* | Deploys all three projects (API, Frontend, Panel) sequentially. |
| `--api` | Deploys only the Python API. |
| `--frontend` | Deploys only the Svelte frontend. |
| `--panel` | Deploys only the Svelte admin panel. |
| `--seed` | Deploys only the Python API, drops existing data, imports the seed JSON into MongoDB, and uploads the default images into the MinIO bucket. |
| `--help` / `-h` | Shows the help message. |

*Note: You can combine flags, successfully deploying just the API and the Panel by running `./deploy-all.sh --api --panel`.*

---

## 🏗️ How it Works

Under the hood, the script:
1. Navigates to the respective project directory on the VPS.
2. Pulls the latest code using `git pull origin main`.
3. (For Svelte apps): the script runs `npm install` and `npm run build`.
4. Uses Docker to build a fresh image and recreate the container serving that project.
5. In the case of `--seed`, it executes `mongoimport` directly in the database container and runs the `seed_minio.py` bulk-upload script.

## ⚠️ Prerequisites

- The script assumes all three projects represent initialized Git repositories on the VPS at the specified `_DIR` paths. 
- Docker and `docker compose` must be installed on the host machine.
- Before executing `--seed`, ensure that the API's `.env` is correctly configured with MinIO and MongoDB credentials.
