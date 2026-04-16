# Use Nginx to serve the static HTML
FROM nginx:alpine

# setting work dir to fix issue
WORKDIR /usr/share/nginx/html/

# Copy our HTML file to the default Nginx folder
COPY index.html .
# Port 80 is the default for web traffic
EXPOSE 80