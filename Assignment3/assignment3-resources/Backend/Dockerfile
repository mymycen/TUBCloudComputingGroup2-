# Use an official nginx as a parent image
FROM nginx

 ADD nginx.conf /etc/nginx/nginx.conf
 
 ADD fix-nginx-conf.sh /etc/nginx/fix-nginx-conf.sh

 VOLUME /hypervisor_etc

# Set the working directory to /home/ubuntu
WORKDIR /home/ubuntu


# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches

CMD ["/bin/bash" , "-c" , "/etc/nginx/fix-nginx-conf.sh && nginx"]
