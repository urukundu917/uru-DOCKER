FROM node:20
EXPOSE 8080
ENV DB_HOST="mysql"
RUN mkdir /opt/app
WORKDIR /opt/app
COPY *.json /opt/app/
COPY *.js /opt/app/
RUN npm install
CMD [ "node", "index.js" ]
