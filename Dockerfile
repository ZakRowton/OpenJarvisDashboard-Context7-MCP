FROM node:lts-alpine

WORKDIR /app

RUN npm install -g @upstash/context7-mcp@2.2.4

EXPOSE 8080

ENTRYPOINT ["context7-mcp"]
CMD ["--transport", "http", "--port", "8080"]
