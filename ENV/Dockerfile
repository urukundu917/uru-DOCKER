#Specifies the base image
FROM almalinux:9

#Executes commands in the container during the build stage
RUN dnf install nginx -y \
&& systemctl enable nginx

#Specifies the command to run when the container starts. It is overridden if a command is provided during docker run
CMD ["nginx", "-g", "daemon off;"]

#Adds metadata to the image
LABEL Author="uru" \
      Name="Frontend" \
      Version="1.0.0"
#Documents the port on which the container listens (EXPOSE instruction will not effect functionality it will only gives information)
EXPOSE 80

#Sets environment variables inside the container.
ENV APP_ENV=production


