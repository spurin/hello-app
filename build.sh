docker buildx create --name build_cross --driver-opt env.BUILDKIT_STEP_LOG_MAX_SIZE=10000000 --driver-opt env.BUILDKIT_STEP_LOG_MAX_SPEED=10000000
docker buildx use build_cross
docker buildx build --platform linux/amd64,linux/arm64/v8,linux/ppc64le,linux/s390x -t spurin/hello-app:1.0 . --push
