# Use the official Debian image as a base
FROM debian:latest

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    nginx

# Install Flutter SDK
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Enable flutter web
RUN flutter channel stable
RUN flutter upgrade
RUN flutter config --enable-web

# Copy the Flutter project to the container
COPY . /app
WORKDIR /app

# Get Flutter dependencies
RUN flutter pub get

# Build the Flutter web application
RUN flutter build web

# Configure Nginx to serve the Flutter web application
RUN rm /etc/nginx/sites-enabled/default
COPY nginx.conf /etc/nginx/sites-available/flutter
RUN ln -s /etc/nginx/sites-available/flutter /etc/nginx/sites-enabled/flutter

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]