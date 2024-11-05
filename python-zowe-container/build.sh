#!/bin/bash

podman manifest create ghcr.io/pixslx/python-zowe-312
podman build --platform linux/amd64,linux/s390x --manifest ghcr.io/pixslx/python-zowe-312 .
podman manifest push ghcr.io/pixslx/python-zowe-312