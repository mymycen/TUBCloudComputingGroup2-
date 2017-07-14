# Using an official nginx(web server) container image
FROM nginx

# The file  nginx.conf must be available inside the container as /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copy file fix-nginx-conf.sh to an arbitrary location 
COPY fix-nginx-conf.sh /home/ubuntu/fix-nginx-conf.sh

# They must expose port 80
EXPOSE 80

#  Define a volume named  /hypervisor_etc
VOLUME  /hypervisor_etc

# Set the working directory to /home/ubuntu
WORKDIR /home/ubuntu

# Run when the container launches 
CMD ./fix-nginx-conf.sh && nginx
