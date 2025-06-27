FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/*
WORKDIR /usr/share/nginx/html
ADD code .
COPY expense.conf /etc/nginx/default.d
EXPOSE 8080
CMD [ "nginx", "-g", "daemon off;" ]