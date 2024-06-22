# deb-builder
deb-builder is a debian package builder based on docker image. This image uses ubuntu/focal.

## Usage
`docker run --platform platform_string -v source_code_dir:/build --rm yufeim/deb-builder:ubuntu/focal`
- platform_string: linux/amd64, linux/arm64
- source_code_dir: place your debian package source code here
