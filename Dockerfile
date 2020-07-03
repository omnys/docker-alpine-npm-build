FROM node:10.19.0-alpine

WORKDIR /home/node

RUN mkdir -p /home/node && \
    chown -R node:node /home/node && \
    apk add --no-cache --update alpine-sdk autoconf automake g++ git make nasm python && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools awscli && \
    npm install --global gulp-cli && \
    npm install --save-dev gulp && \
    npm install --save-dev gulp-less && \
    npm install --save-dev gulp-autoprefixer && \
    npm install --save-dev gulp-cssmin && \
    npm install --save-dev gulp-rename && \
    npm install --save-dev gulp-clean && \
    npm install --save-dev gulp-concat && \
    npm install --save-dev gulp-image

USER node
