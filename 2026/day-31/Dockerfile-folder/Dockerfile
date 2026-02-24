FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx html files
RUN rm -rf ./*

# Copy our custom HTML file
COPY index.html .

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
