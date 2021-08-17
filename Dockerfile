FROM node:12-alpine as base

WORKDIR /usr/app

#---------- PRE-REQS ----------
FROM base as production

COPY . .

RUN yarn --prod --no-lockfile
EXPOSE 3333

#---------- DEVELOPMENT ----------
FROM production as development

RUN yarn