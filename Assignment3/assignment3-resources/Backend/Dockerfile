# Use an official Python runtime as a parent image
FROM nginx

 ADD nginx.conf /etc/nginx/nginx.conf
 
 ADD fix-nginx-conf.sh /etc/nginx/fix-nginx-conf.sh

#  VOLUME /usr/share/nginx/html
# 
#  VOLUME /etc/nginx
 
 VOLUME /hypervisor_etc
# Set the working directory to /home/ubuntu
WORKDIR /home/ubuntu

# Copy the current directory contents into the container at /app
#ADD . /etc/nginx

# Install any needed packages specified in requirements.txt
# RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8000

# Define environment variable
# ENV CC_BACKEND_SERVERS CCG2_A3_Stack-backend-0 CCG2_A3_Stack-backend-1

# Run app.py when the container launches

CMD ["/bin/bash" , "-c" , "/etc/nginx/fix-nginx-conf.sh && nginx"]
