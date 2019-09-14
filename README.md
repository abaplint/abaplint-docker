# abaplint docker config

This repository hold official configuration for docker image of abaplint.

The image is accessible at [Docker Hub](https://cloud.docker.com/u/abaplint/repository/docker/abaplint/abaplint).

Templates for re-usage (e.g. `.gitlab-ci.yml` example) can be found in [templates](./templates).

## Build procedure

*This is temporary, until automatic release management is established*

```sh
# Supposedly after docker login
bin/build-container.sh
bin/push-containers.sh
# This pushes latest, and version tags (e.g. 2, 2.1, 2.1.3)
```

useful:
- https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
- https://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html
