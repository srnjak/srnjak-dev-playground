# Srnjak development playground Docker Image

## Description
This Docker image provides a versatile development playground with an unminimized Ubuntu base. It is suitable for various testing and development purposes. The image includes sudo, the joe text editor, and additional apt sources from srnjak.com for extended functionality.

## Build and Usage
1. Build the Docker image, optionally specifying the Ubuntu version:
   ```bash
   docker build -t srnjak-dev-playground --build-arg UBUNTU_VERSION=22.04 .
   ```

Replace `22.04` with the desired Ubuntu version.

2. Run a container based on the image:
   ```bash
   docker run --rm -it srnjak-dev-playground
   ```

3. You will be inside the `/playground` directory in the container, providing a flexible environment for your development and testing needs.

## Installed Tools
- sudo
- joe (text editor)

## Added apt sources
- https://ci.srnjak.com/nexus/repository/apt-release (main)
- https://ci.srnjak.com/nexus/repository/apt-preview (preview)
