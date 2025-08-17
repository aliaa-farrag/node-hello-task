# syntax=docker/dockerfile:1.7-labs
FROM node:20-alpine

ENV NODE_ENV production
ENV APP_DIR /app
WORKDIR $APP_DIR

# Install deps
COPY package.json ./
RUN npm install --omit=dev

# Copy app
COPY . $APP_DIR

EXPOSE 3000
CMD ["npm", "start"]