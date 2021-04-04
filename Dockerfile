FROM node:12-alpine as base

WORKDIR /usr/app

#---------- PRE-REQS ----------
FROM base as prereq

COPY package*.json ./
# COPY client/package*.json client/ts*.json client/angular.json client/
COPY server/package.json server/ts*.json server/

RUN npm install --quiet --unsafe-perm --no-progress --no-audit --only=production

#---------- DEVELOPMENT ----------
FROM prereq as development

RUN npm install --quiet --unsafe-perm --no-progress --no-audit --only=development

## All files will be volume mounted into the container

EXPOSE 3333
EXPOSE 9229
