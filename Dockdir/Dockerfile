FROM node:19-alpine3.16

WORKDIR /app

COPY ./package*.json ./

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin 

RUN npm install

# RUN npm install -g @nestjs/cli

EXPOSE 3000

CMD npm start --host 0.0.0.0 --disableHostCheck true