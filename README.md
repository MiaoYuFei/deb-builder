# deb-builder
deb-builder is a debian package builder based on docker image.

## Usage
`docker run --platform platform_string -v source_code_dir:/build --rm yufeim/deb-builder:image_tag`
- platform_string: linux/amd64, linux/arm64
- source_code_dir: place your debian package source code here
- image_tag: ubuntu-focal, ubuntu-jammy, ubuntu-noble
