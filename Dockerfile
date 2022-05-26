FROM node:18.2.0-alpine3.15

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache git ca-certificates

COPY package*.json ./
RUN npm ci --no-audit --no-optional
