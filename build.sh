#docker stop chat_app && docker rm chat_app &&
yarn run build &&
docker build -t namaste_bali_trans . &&
docker run --name namaste_bali_trans -p 3000:3000 -d namaste_bali_trans
