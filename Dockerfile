FROM node:10.16.3-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
RUN echo "starting copy"
COPY . .
EXPOSE 3000
CMD npm start
