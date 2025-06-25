#ARG is used to set the variables at build time only, not inside the container
#ENV variables can be accessed image build time and container both

#We can set ARG value to ENV variable value 

ARG version
#ARG can be use before FROM in one spacial case i.e to supply version to the base image 
#ARG instruction before FROM is only valid, after FROM it cant br accessed
FROM amazonlinux:${version:-9}
ARG Name="uru" \
    Environment="DEV"
#We can set ARG value to ENV variable value 
ENV name=$Name
RUN echo "Name: $Name, Env: $Environment, Version: $version"
CMD ["sleep", "100"]    