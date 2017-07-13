#udo Use nginx  as a parent image
FROM nginx

EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf
COPY fix-nginx-conf.sh /etc/nginx/fix-nginx-conf.sh
VOLUME /hypervisor_etc
# Set the working directory to /home/ubuntu
#WORKDIR /home/ubuntu
# Make port 80 available to the world outside this container

# Define environment variable
ENV CC_BACKEND_SERVERS='192.168.0.3 192.168.0.5'
#ENV CC_BACKEND_SERVERS='ccg2-a3-stack-backend-0 ccg2-a3-stack-backend-1'
#ENV CC_BACKEND_SERVERS CCG2-A3-STACK-BACKEND-0 CCG2-A3-STACK-BACKEND-1
# Run when the container launches  
#CMD ["/bin/bash", "-c","echo ${CC_BACKEND_SERVERS} && ./etc/nginx/fix-nginx-conf.sh ${CC_BACKEND_SERVERS} && nginx"]
CMD ./etc/nginx/fix-nginx-conf.sh "$CC_BACKEND_SERVERS" && nginx
