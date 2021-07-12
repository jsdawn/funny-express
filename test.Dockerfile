FROM node:12.1
LABEL maintainer="kingwyh1993@163.com"
LABEL mainenv="test"
COPY . /home/funnyService
WORKDIR /home/funnyService
ENV NODE_ENV=production
RUN npm install yarn -g
RUN yarn install
EXPOSE 3008
CMD [ "node", "src/app.js" ]