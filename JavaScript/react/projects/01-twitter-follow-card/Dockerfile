FROM node:18-alpine AS base

RUN npm i -g pnpm

FROM base AS dependencies

WORKDIR /app
COPY package.json .
RUN pnpm i
COPY . .
RUN ["pnpm", "run", "build"]
CMD ["pnpm", "run", "preview"]
