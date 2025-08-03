FROM alpine:latest

# Install required packages
RUN apk add --no-cache ca-certificates bash

# Create app directory
WORKDIR /app

# Copy files to container
COPY mihomo /app/mihomo
COPY start-mihomo.sh /app/start-mihomo.sh
COPY mihomo-default.yaml /app/mihomo-default.yaml

# Make scripts executable
RUN chmod +x /app/mihomo /app/start-mihomo.sh

# Run the startup script
CMD ["/app/start-mihomo.sh"]
