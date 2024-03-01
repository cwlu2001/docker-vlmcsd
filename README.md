# docker-vlmcsd


## Run
### docker cli
```bash
docker run -d --restart=always --name-vlmcsd -p 1688:1688 cwlu2001/vlmcsd:latest
```

## docker compose
```yaml
services:
  vlmcsd:
    image: cwlu2001/vlmcsd:latest
    container_name: vlmcsd
    restart: always
    ports:
      - 1688:1688
```