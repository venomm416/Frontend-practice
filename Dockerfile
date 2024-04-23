FROM node:20-bookworm-slim AS base

COPY /app /app
WORKDIR /app

RUN rm -rf "app/(sample)"
RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "start"]
