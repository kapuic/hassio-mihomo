#!/usr/bin/env bash

# Check if custom config exists in Home Assistant config directory
CONFIG_FILE="/config/mihomo.yaml"
if [ ! -f "$CONFIG_FILE" ]; then
    echo "No custom config found at $CONFIG_FILE, using default config"
    CONFIG_FILE="/app/config.yaml"
fi

echo "Starting Mihomo with config: $CONFIG_FILE"

# Start Mihomo with the selected config
exec /app/mihomo \
    --config "$CONFIG_FILE" \
    --tproxy-port 9898
