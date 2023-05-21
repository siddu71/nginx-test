# Set nginx base image
FROM nginx

# Copy custom static website to Nginx server
COPY /var/jenkins_home/workspace/nginx/index.html /usr/share/nginx/html

# Expose ports
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
