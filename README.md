# docker-vlmcsd
![ci] ![docker_pulls] ![docker_image_size]

[ci]: https://github.com/cwlu2001/docker-build/actions/workflows/vlmcsd.yml/badge.svg
[docker_pulls]: https://img.shields.io/docker/pulls/cwlu2001/vlmcsd?logo=docker
[docker_image_size]: https://img.shields.io/docker/image-size/cwlu2001/vlmcsd?logo=docker


## Run
### CLI
```bash
docker run -d --restart=always --name=vlmcsd -p 1688:1688/tcp cwlu2001/vlmcsd:latest
```

### Docker Compose
docker-compose.yaml
```yaml
services:
  vlmcsd:
    image: cwlu2001/vlmcsd:latest
    container_name: vlmcsd
    restart: always
    ports:
      - 1688:1688/tcp
```

## Links
+ [vlmcsd](https://github.com/Wind4/vlmcsd)
+ [source](https://github.com/cwlu2001/docker-vlmcsd)
