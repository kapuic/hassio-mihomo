# Home Assistant Add-on: Mihomo

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports armhf Architecture][armhf-shield]
![Supports i386 Architecture][i386-shield]

Mihomo (Clash.Meta) - A rule-based transparent proxy with advanced routing capabilities.

## About

This add-on brings the power of Mihomo (formerly known as Clash.Meta) to your Home Assistant installation. Mihomo is a rule-based network proxy that supports transparent proxy, multiple protocols, and advanced routing features.

## Features

- 🚀 **Transparent Proxy (TProxy)** - Route all network traffic transparently
- 🌐 **Multi-protocol Support** - Shadowsocks, VMess, Trojan, VLESS, and more
- 📱 **Full Platform Support** - Works on all Home Assistant supported architectures
- 🔄 **Auto-updating** - Daily builds ensure you have the latest Mihomo version
- 🛡️ **Rule-based Routing** - Route traffic based on domains, IPs, and more
- 🎯 **DNS Management** - Built-in DNS server with fake-IP support
- 📊 **RESTful API** - Monitor and control via web dashboard

## Installation

1. Click the Home Assistant My button below to add this add-on repository to your Home Assistant instance
2. Navigate to **Settings** → **Add-ons** → **Add-on Store**
3. Find "Mihomo Proxy" in the list and click on it
4. Click **Install**

## Configuration

This add-on works out of the box with sensible defaults. For advanced users, you can provide a custom configuration:

1. Create a file named `mihomo.yaml` in your Home Assistant config directory
2. Add your proxy configuration (see example below)
3. Restart the add-on

### Example Configuration

```yaml
# /config/mihomo.yaml
mixed-port: 7893
allow-lan: true
mode: rule
log-level: info

proxies:
  - name: "my-proxy"
    type: ss
    server: your-server.com
    port: 8388
    cipher: aes-256-gcm
    password: "your-password"

proxy-groups:
  - name: Proxy
    type: select
    proxies:
      - my-proxy
      - DIRECT

rules:
  - DOMAIN-SUFFIX,google.com,Proxy
  - MATCH,DIRECT
```

## Ports

| Port | Protocol | Description                |
| ---- | -------- | -------------------------- |
| 7890 | TCP      | HTTP Proxy                 |
| 7891 | TCP      | SOCKS5 Proxy               |
| 7893 | TCP      | Mixed HTTP/SOCKS Proxy     |
| 9898 | TCP      | Transparent Proxy (TProxy) |
| 9090 | TCP      | RESTful API & Dashboard    |
| 53   | UDP      | DNS Server                 |

## Web Dashboard

Access the Mihomo dashboard at: `http://homeassistant.local:9090`

Compatible dashboards:

- [metacubexd](https://github.com/MetaCubeX/metacubexd) - Official dashboard
- [Yacd](https://github.com/haishanh/yacd) - Yet Another Clash Dashboard

## Documentation

For complete documentation including advanced configuration, troubleshooting, and detailed setup instructions, please see the [main repository README](https://github.com/kapuic/hassio-mihomo).

## Support

- [GitHub Issues](https://github.com/kapuic/hassio-mihomo/issues)
- [Home Assistant Community Forum](https://community.home-assistant.io/)
- [Mihomo Documentation](https://wiki.metacubex.one/)

## Security

This add-on requires host network access to function as a transparent proxy. Security rating: 4/8

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
