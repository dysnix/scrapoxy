FROM node:8
EXPOSE 8888 8889

# Add source code
COPY . /usr/src/app
WORKDIR /usr/src/app
ADD tools/docker/config.js /config/config.js

# Install Scrapoxy
RUN npm install
RUN npm build

# Start scrapoxy
CMD node server/index.js start /config/config.js
