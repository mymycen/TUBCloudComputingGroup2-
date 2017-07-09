#udo Use nginx  as a parent image
FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY fix-nginx-conf.sh /etc/nginx/fix-nginx-conf.sh
VOLUME /hypervisor_etc
# Set the working directory to /home/ubuntu
WORKDIR /home/ubuntu
# Make port 80 available to the world outside this container
EXPOSE 80
# Define environment variable
#ARG CC_BACKEND_SERVERS
ENV CC_BACKEND_SERVERS CCG2_A3_Stack-backend-0 CCG2_A3_Stack-backend-1
# Run when the container launches
#CMD ["/etc/nginx/fix-nginx-conf.sh $CC_BACKEND_SERVERS"]
CMD ["/bin/bash" , "-c" ,"/etc/nginx/fix-nginx-conf.sh CC_BACKEND_SERVERS && nginx"]
