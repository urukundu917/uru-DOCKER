CMD instruction runs at the time of container creation. It keeps container running

systemctl start backend --> infinite time
systemctl start nginx --> /etc/systemd/system/nginx.service

systemctl only works for full server, it will not work for contianers

nginx -g daemon-off --> runs nginx in foreground

docker build --> image creation --> RUN
docker run --> container creation --> CMD