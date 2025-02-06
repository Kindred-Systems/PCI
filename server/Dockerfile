# Build Stage
FROM golang:1.20 AS builder
WORKDIR /app

# Initialize Go module if it does not exist
RUN go mod init server || true

# Copy source files
COPY . .

# Fetch dependencies and clean up
RUN go mod tidy

# Build the Go backend service
RUN go build -o backend_service

# Deploy Stage
FROM debian:bookworm-slim
WORKDIR /app

# Copy compiled binary from the builder stage
COPY --from=builder /app/backend_service /app/

# Install required system dependencies
RUN apt-get update && apt-get install -y libc6

# Set up environment variables (can be overridden in Docker Compose)
ENV DATABASE_URL="postgres://user:password@db:5432/kindred"

# Expose API port
EXPOSE 8081

# Run the backend service
CMD ["/app/backend_service"]

