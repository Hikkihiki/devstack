FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install vim
RUN apt-get -y install git
RUN apt-get -y install curl
RUN apt-get -y install wget
RUN apt-get -y install openssh-server
RUN apt-get -y install nodejs
RUN apt-get -y install npm

RUN npm install express
RUN echo "var express = require('express');var app = express();app.get('/', function (req, res) {res.send('Hello World!');});app.listen(3000, function () {console.log('Example app listening on port 3000!');});" > app.js
CMD nodejs app.js
EXPOSE 3000
