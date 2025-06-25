#ONBUILD is used to trigger few instructions at build when a user is using our image

FROM almalinux:latest
RUN dnf install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
#This ONBULD instruction runs only, when any user uses our image 
ONBUILD COPY index.html /usr/share/nginx/html/index.html
CMD [ "nginx", "-g", "daemon off;" ]