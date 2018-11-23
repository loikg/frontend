FROM node:10.12

RUN mkdir -p /application/frontend
WORKDIR /application/frontend
ADD ./package.json /application/frontend
ADD ./package-lock.json /application/frontend
RUN npm install -g react-scripts
RUN npm install --silent
VOLUME /application/frontend/node_modules

CMD ["npm", "run", "start"]