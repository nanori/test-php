FROM node:alpine
COPY server.js /app/server.js

RUN npm install express
WORKDIR /app/

EXPOSE 3000
ENTRYPOINT ["node", "server.js"]
