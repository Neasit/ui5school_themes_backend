FROM node:18-alpine

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

COPY srv /home/service/srv
COPY db /home/service/db
COPY package.json /home/service

# Add SQLITE3
# Install dependencies
RUN \
  apk update && \
  apk upgrade && \
  apk add \
    alpine-sdk \
    build-base  \
    tcl-dev \
    tk-dev \
    mesa-dev \
    jpeg-dev \
    libjpeg-turbo-dev

# Download latest release
RUN \
  wget \
    -O sqlite.tar.gz \
    https://www.sqlite.org/src/tarball/sqlite.tar.gz?r=release && \
  tar xvfz sqlite.tar.gz

RUN \
  ./sqlite/configure --prefix=/usr && \
  make && \
  make install \
  && \
  # Smoke test
  sqlite3 --version

WORKDIR /home/service

RUN su node -c "npm install -g @sap/cds-dk"

EXPOSE 4004/TCP

CMD ["cds", "run"]