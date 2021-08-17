FROM node:12-alpine as base

WORKDIR /usr/app

#---------- PRE-REQS ----------
FROM base as production

COPY package*.json ./
COPY server/package.json server/ts*.json server/

RUN npm install --quiet --unsafe-perm --no-progress --no-audit --only=production
EXPOSE 3333

#---------- DEVELOPMENT ----------
FROM production as development
RUN npm install --quiet --unsafe-perm --no-progress --no-audit --only=development

EXPOSE 9229
