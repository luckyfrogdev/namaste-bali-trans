FROM node:19-alpine
ENV NODE_ENV production
WORKDIR /app
COPY ./build ./static package*.json ./
RUN npm ci --omit dev
EXPOSE 3000
ENTRYPOINT ["node", "index.js"]
