FROM node:10.19.0-alpine

WORKDIR /home/node

RUN mkdir -p /home/node && \
    chown -R node:node /home/node && \
    apk add --no-cache python make g++ git && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools awscli && \
    npm install --global gulp-cli

USER node
