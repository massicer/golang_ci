# Golang CI 🧪

Docker image used to be able to have repeatable CI/CD pipelines and easy to itegrate with devcontainer

## CI/CD
This repository contains a CI/CD pipeline made with [`circle ci`](https://circleci.com) 
that publishs the latest images on the public [docker hub registry](https://hub.docker.com/repository/docker/massicer/golang_ci).

### Docker in Docker
If you want to use this image providing access to your Docker daemon you need to add your `docker.sock` as volume.
```sh
docker run -ti -v /var/run/docker.sock:/var/run/docker.sock massicer/golang_ci:{tagname}
```
