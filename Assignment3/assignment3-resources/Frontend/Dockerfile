# Use nginx(web server)  as a parent image
FROM nginx

# The file  nginx.conf must be available inside the container as /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copy file fix-nginx-conf.sh to an arbitrary location 
COPY fix-nginx-conf.sh /home/ubuntu/fix-nginx-conf.sh

# Creating the volume to be mounted later in docker-compose file
VOLUME /hypervisor_etc

# Set the working directory to /home/ubuntu
WORKDIR /home/ubuntu

# Make port 80 available to the world outside this container
EXPOSE 80

# Defining environment variable
ENV CC_BACKEND_SERVERS=$CC_BACKEND_SERVERS

# Run when the container launches  
CMD ./fix-nginx-conf.sh "$CC_BACKEND_SERVERS" && nginx
