# Use an official Nginx runtime as the base image
FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy custom Nginx configuration file from the current directory to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the website files (index.html and assets folder) from the current directory to Nginx's web root directory
COPY index.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets

# Expose port 80 to the outside world
EXPOSE 80
