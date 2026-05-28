<h1 align=center>Dockette / Deploy</h1>

<p align=center>
   <a href="https://github.com/dockette/deploy/actions"><img src="https://github.com/dockette/deploy/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/r/dockette/deploy"><img src="https://img.shields.io/docker/pulls/dockette/deploy.svg" alt="Docker Hub pulls"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

## Deployer

> Deployer — Deployment tool for PHP
> https://deployer.org/

| Version | Image |
|---------|-------|
| 8.x.x   | dockette/deploy:deployer8 |
| 7.x.x   | dockette/deploy:deployer7 |
| 6.x.x   | dockette/deploy:deployer6 |

How to use it? Mount your app or just the deploy config.

```
docker run -it --rm -v $(pwd)/deploy.php:/srv dockette/deploy:deployer8
docker run -it --rm -v $(pwd)/deploy.php:/srv dockette/deploy:deployer7
docker run -it --rm -v $(pwd)/deploy.php:/srv dockette/deploy:deployer6
```

## Maintenance
See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
