# docker-vlmcsd
[![ci_icon]][ci_link] [![docker_pulls]][docker_link] [![image_size]][docker_link]

## Run
### docker cli
```bash
docker run -d --restart=always --name=vlmcsd -p 1688:1688/tcp cwlu2001/vlmcsd:latest
```

### docker compose
```yaml
services:
  vlmcsd:
    image: cwlu2001/vlmcsd:latest
    container_name: vlmcsd
    restart: always
    ports:
      - 1688:1688/tcp
```


[ci_icon]: https://github.com/cwlu2001/docker-vlmcsd/actions/workflows/docker-ci.yml/badge.svg
[ci_link]: https://github.com/cwlu2001/docker-vlmcsd/actions/workflows/docker-ci.yml
[docker_pulls]: https://img.shields.io/docker/pulls/cwlu2001/vlmcsd?logo=docker
[image_size]: https://img.shields.io/docker/image-size/cwlu2001/vlmcsd?logo=docker
[docker_link]: https://hub.docker.com/r/cwlu2001/vlmcsd