FROM node:18.12.1-alpine3.15

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache git ca-certificates docker curl \
  --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing kubectl

COPY package*.json ./
RUN npm ci --no-audit --no-optional
