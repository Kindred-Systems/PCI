# Build Stage
FROM golang:1.20 AS builder
WORKDIR /app

# Copy source code
COPY . .

# Fetch dependencies and build
RUN go mod tidy
RUN go build -o backend_service

# Deploy Stage
FROM debian:bullseye-slim
WORKDIR /app

# Copy compiled binary from the builder
COPY --from=builder /app/backend_service /app/

# Expose API port
EXPOSE 8081

# Run backend service
CMD ["/app/backend_service"]
