if sudo docker ps -a --format '{{.Names}}' | grep -q '^namaste_bali_trans$'; then
    sudo docker stop namaste_bali_trans && sudo docker rm namaste_bali_trans &&
    npm install && npm run build &&
    sudo docker build -t namaste_bali_trans . &&
    sudo docker run --name namaste_bali_trans -p 3000:3000 -d namaste_bali_trans
else
    npm install && npm run build &&
       sudo docker build -t namaste_bali_trans . &&
       sudo docker run --name namaste_bali_trans -p 3000:3000 -d namaste_bali_trans
fi
