FROM node:lts-alpine

WORKDIR /app

RUN npm install -g @upstash/context7-mcp@2.2.4

EXPOSE 8080

CMD ["node", "$(npm root -g)/@upstash/context7-mcp/dist/index.js", "--transport", "http", "--port", "8080"]
