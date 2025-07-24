FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm ci && npm cache clean --force && npm run build && npm cache clean --force
USER node
ENV NODE_ENV=production
ENTRYPOINT ["node", "dist/index.js"]
