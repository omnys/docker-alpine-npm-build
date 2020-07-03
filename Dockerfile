#FROM node:10.19.0-alpine
FROM node:14.4.0-alpine3.12
#FROM node:10.16.0-alpine

WORKDIR /home/node

#apk add --no-cache --update alpine-sdk autoconf automake g++ git libtool make nasm pkgconfig python && \

RUN mkdir -p /home/node && \
    chown -R node:node /home/node && \
    apk add --no-cache --update alpine-sdk autoconf automake build-base cairo-dev g++ giflib-dev git jpeg jpeg-dev libjpeg libpng libpng-dev libtool make nasm pango-dev pkgconfig python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools awscli && \
    npm install --global gulp-cli@2.0.1 && \
    npm install --save-dev gulp@3.9.1

    #npm install --save-dev gulp-imagemin
    # npm install --save-dev gulp-less && \
    # npm install --save-dev gulp-autoprefixer && \
    # npm install --save-dev gulp-cssmin && \
    # npm install --save-dev gulp-rename && \
    # npm install --save-dev gulp-clean && \
    # npm install --save-dev gulp-concat && \

USER node
