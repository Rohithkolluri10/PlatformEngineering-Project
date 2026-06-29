# Use the official NGINX image as the base image
FROM nginx:alpine

# Clean the default NGINX public directory
RUN rm -rf /usr/share/nginx/html/*

# Copy static website files from your host machine to the container
COPY ./dist /usr/share/nginx/html

# Copy a custom NGINX configuration file if needed
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to allow external access
EXPOSE 80

# Start NGINX in the foreground so the container continues running
CMD ["nginx", "-g", "daemon off;"]
