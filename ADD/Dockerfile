# Specifies the base image
FROM almalinux:9

# Installs nginx and cleans up package cache to reduce image size
RUN dnf install nginx -y \
    && dnf clean all \
    && rm -rf /var/cache/dnf

# Enables nginx to start on boot within the container (not typically used in containers)
# Removes default HTML files
RUN rm -rf /usr/share/nginx/html/*

# Sets environment variables inside the container
ENV APP_ENV=production

# Copies configuration file for nginx
COPY expense.conf /etc/nginx/default.d/

# Downloads and extracts the zip archive directly to the target directory
ADD https://expense-builds.s3.us-east-1.amazonaws.com/expense-frontend-v2.zip /tmp/expense-frontend-v2.zip
RUN dnf install unzip -y \
    && unzip /tmp/expense-frontend-v2.zip -d /usr/share/nginx/html/ \
    && rm -f /tmp/expense-frontend-v2.zip \
    && dnf remove -y unzip \
    && dnf clean all

# Specifies the command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]

# Adds metadata to the image
LABEL Author="uru" \
      Name="Frontend" \
      Version="1.0.0"

# Documents the port on which the container listens
EXPOSE 80
