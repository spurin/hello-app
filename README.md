# Hello App - Cross-Arch Docker Image

This repository contains a cross-architecture (cross-arch) build of the [Google Cloud Kubernetes Engine sample hello-app](https://cloud.google.com/kubernetes-engine/docs/samples/container-hello-app). The original Google image was built for `amd64` architecture only. This project extends the compatibility to multiple architectures, such as `arm64` and `amd64`.

## Overview

The `hello-app` is a simple HTTP server written in Go that responds with a "Hello, world!" message. This project was initially created as a sample application for Google Kubernetes Engine (GKE). The original image was limited to `amd64` architecture. This repository provides an updated Dockerfile and instructions for building a multi-architecture image that can run on different platforms, including `arm64`.

## Dockerfile

The `Dockerfile` in this repository builds the Go application with static linking and then packages it into a minimal `scratch` image.

### Key Features:

- **Static Linking**: The Go binary is statically linked, ensuring all dependencies are included within the binary itself.
- **Multi-Architecture Support**: The image can be built for multiple architectures (`amd64`, `arm64`, etc.), making it compatible with a wider range of devices and platforms.

## Building the Image

To build a multi-architecture image, see build.sh

### Prerequisites

- Docker with Buildx enabled.
