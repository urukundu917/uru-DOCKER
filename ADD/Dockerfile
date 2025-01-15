# Specifies the base image
FROM almalinux:9

# Installs nginx and cleans up package cache to reduce image size
RUN dnf install nginx -y \
RUN rm -rf /usr/share/nginx/html/*

# Sets environment variables inside the container
ENV APP_ENV=production

# Copies configuration file for nginx
COPY expense.conf /etc/nginx/default.d/

# Downloads and extracts the zip archive directly to the target directory
ADD expense-frontend-v2.zip /usr/share/nginx/html

# Specifies the command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]

# Adds metadata to the image
LABEL Author="uru" \
      Name="Frontend" \
      Version="1.0.0"

# Documents the port on which the container listens
EXPOSE 80
