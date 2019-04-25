FROM node:8.16.0
RUN \
  apt-get update --allow -y && \
  apt-get install --allow -y libzmq3-dev curl && \
  rm -rf /var/lib/apt/lists/* /var/cache/debconf
RUN npm install -g --unsafe-perm=true bitcore@4.1.0
COPY . /src
WORKDIR /src
EXPOSE 3001 8333
CMD ["/bin/sh", "-c", "bitcored >> /src/log/bitcore.log 2>&1"]