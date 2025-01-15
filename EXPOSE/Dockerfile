#Specifies the base image
FROM almalinux:9

#Executes commands in the container during the build stage
RUN dnf install nginx -y \
&& systemctl enable nginx

#Specifies the command to run when the container starts. It is overridden if a command is provided during docker run
CMD ["nginx", "-g", "daemon off;"]

#Adds metadata to the image
LABEL Auther="uru" \
      Version="1.0" \
      Name:"Frontend"


