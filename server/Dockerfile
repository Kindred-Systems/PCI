# Build Stage
FROM golang:1.20 AS builder
WORKDIR /app

# Initialize Go module if not already present
RUN go mod init server || true

# Copy source files
COPY . .

# Ensure dependencies are installed
RUN go mod tidy

# Compile the Go binary
RUN go build -o backend_service

# Deploy Stage (Updated to bookworm-slim for newer glibc)
FROM debian:bookworm-slim
WORKDIR /app

# Copy compiled binary from the builder
COPY --from=builder /app/backend_service /app/

# Install necessary libraries
RUN apt-get update && apt-get install -y libc6

# Expose API port
EXPOSE 8081

# Run the backend service
CMD ["/app/backend_service"]
