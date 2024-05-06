# Use a base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the necessary files to the container
COPY index.html .
COPY vite.svg .
COPY assets/ assets/

# Expose a port
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]
