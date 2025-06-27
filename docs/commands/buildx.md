# Buildx

## Global

### Build multi-platform image

```sh
docker buildx build --platform <platforms> -t <image_name>:<tag> .
```

### Build and push multi-platform image

```sh
docker buildx build --platform <platforms> -t <image_name>:<tag> --push .
```

## Buildx Setup

### Create a new builder instance

```sh
docker buildx create --name <builder_name> --use
```

### List builder instances

```sh
docker buildx ls
```

### Switch to a builder instance

```sh
docker buildx use <builder_name>
```

### Remove a builder instance

```sh
docker buildx rm <builder_name>
```

## Image Management

### Push a specific platform image

```sh
docker buildx build --platform <platforms> -t <image_name>:<tag> --push .
```

### Inspect multi-platform image manifest

```sh
docker buildx imagetools inspect <image_name>:<tag>
```

### Create a new tag for an existing multi-platform image

```sh
docker buildx imagetools create --tag <new_image_name>:<new_tag> <existing_image_name>:<existing_tag>
```

## Advanced

### Enable experimental features

```sh
export DOCKER_CLI_EXPERIMENTAL=enabled
```

### Use BuildKit for faster builds (set globally)

```sh
export DOCKER_BUILDKIT=1
```

## Platforms

### Example list of supported platforms

```sh
linux/amd64,linux/arm64,linux/arm/v7
```

### Build for all platforms with cache

```sh
docker buildx build --platform linux/amd64,linux/arm64 --cache-from type=registry,ref=<cache_image> -t <image_name>:<tag> --push .
```