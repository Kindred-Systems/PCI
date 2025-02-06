# Flutter base image
FROM cirrusci/flutter:latest AS builder
WORKDIR /app

# Copy Flutter source code
COPY . .

# Fetch dependencies and build
RUN flutter pub get
RUN flutter build web

# Serve using Nginx
FROM nginx:alpine
COPY --from=builder /app/build/web /usr/share/nginx/html

# Expose frontend port
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
