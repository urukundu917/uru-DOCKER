FROM almalinux:latest
RUN mkdir /tmp/docker
RUN cd /tmp/docker
#WORKDIR is used to to set the current dworking directory insed docker image
#in RUN instruction cd not working
WORKDIR /tmp/docker
RUN pwd
RUN echo "hello" > hello.txt
CMD ["sleep", "100"]

