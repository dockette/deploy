# Deploy / Deployment Tools

[![Docker Stars](https://img.shields.io/docker/stars/dockette/deploy.svg?style=flat)](https://hub.docker.com/r/dockette/deploy/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/deploy.svg?style=flat)](https://hub.docker.com/r/dockette/deploy/)

## Deployer

> Deployer — Deployment tool for PHP
> https://deployer.org/

| Version | Image |
|---------|-------|
| 7.x.x   | dockette/deploy:deployer7 |
| 6.x.x   | dockette/deploy:deployer6 |
| 5.x.x   | dockette/deploy:deployer5 |
| 4.x.x   | dockette/deploy:deployer4 |

How to use it? Mount your app or just the deploy config.

```
docker run -it --rm -v $(pwd)/deploy.php:/srv dockette/deploy:deployer7
docker run -it --rm -v $(pwd)/deploy.php:/srv dockette/deploy:deployer6
```
