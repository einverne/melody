FROM node:17.9.0-buster

RUN apt update && apt install -y ffmpeg git vim && ffmpeg -version
WORKDIR /melody
COPY . /melody
RUN node init.js
EXPOSE 5566
VOLUME ['/melody/backend/.profile/']
CMD exec node backend/src/index.js

