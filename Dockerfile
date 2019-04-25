FROM node:8.16.0

RUN \
  apt-get update --force-yes -y && \
  apt-get install -y --force-yes libzmq3-dev curl
RUN npm install -g --unsafe-perm=true bitcore
WORKDIR /src
ARG TZ
ENV TZ $TZ
EXPOSE 3001
EXPOSE 8333
CMD \
  bitcored >> /src/log/bitcore.log 2>&1