if docker ps -a --format '{{.Names}}' | grep -q '^namaste_bali_trans$'; then
    docker stop namaste_bali_trans && docker rm namaste_bali_trans &&
    npm install && npm run build &&
    docker build -t namaste_bali_trans . &&
    docker run --name namaste_bali_trans -p 3000:3000 -d namaste_bali_trans
else
    npm install && npm run build &&
       docker build -t namaste_bali_trans . &&
       docker run --name namaste_bali_trans -p 3000:3000 -d namaste_bali_trans
fi
