![Docker Image Test](https://github.com/abaplint/abaplint-docker/workflows/Docker%20Image%20Test/badge.svg?branch=master)

# abaplint docker config

This repository hold official configuration for docker image of [abaplint](https://github.com/abaplint/abaplint).

The image is accessible at [Docker Hub](https://cloud.docker.com/u/abaplint/repository/docker/abaplint/abaplint). Published automatically every hour.

Templates for re-usage:

- Gitlab: `.gitlab-ci.yml` example can be found in [templates](./templates). Working repo for this configation can be found at [abaplinted_sample](https://gitlab.com/atsybulsky/abaplinted_sample)

## Manual build procedure

```sh
# Supposedly after docker login
bin/build-container.sh
bin/push-containers.sh
# This pushes latest, and version tags (e.g. 2, 2.1, 2.1.3)
```

To test the built image:
```sh
bin/test-run.sh
```

---

### Useful notes

- https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
- https://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html
- repository_dispatch github action: 
  - https://blog.marcnuri.com/triggering-github-actions-across-different-repositories/
  - https://github.com/marketplace/actions/repository-dispatch
- remove stopped containers: `docker rm $(docker ps -qa --no-trunc --filter "status=exited")`
- remove dangling images (no tag): `docker image prune`
- remove all unused images: `docker image prune -a`
