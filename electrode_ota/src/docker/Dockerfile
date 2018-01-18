FROM node:latest

RUN apt-get update

# Install needed deps and clean up after
RUN apt-get install -y -q --no-install-recommends \
    apt-transport-https \
    build-essential \
    ca-certificates \
    curl \
    netcat-openbsd \
    g++ \
    gcc \
    git \
    npm \
    wget

ENV OTAPATH /eteration_ota

RUN mkdir  $OTAPATH
COPY config   $OTAPATH/config
COPY package.json $OTAPATH/package.json
COPY patch/dao.js $OTAPATH/node_modules/electrode-ota-server/server/fileservice/dao.js
COPY patch/acquisition.js $OTAPATH/node_modules/electrode-ota-server/server/model/acquisition.js
COPY run.sh $OTAPATH/run.sh
RUN chmod +x $OTAPATH/run.sh

WORKDIR $OTAPATH
# RUN npm init
RUN npm install electrode-ota-server --save

CMD $OTAPATH/run.sh
