# Node.js 14 base
FROM node:14

WORKDIR /app

COPY . .

# Production mode, and point the app at the item-db service
ENV NODE_ENV=production DB_HOST=item-db

RUN npm install --production --unsafe-perm && npm run build

EXPOSE 8080

CMD ["npm", "start"]
