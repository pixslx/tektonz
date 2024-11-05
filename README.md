# tektonz

A project with Tekton tasks which uses Zowe Python SDK to interface with zOS.

## Starting guide

1) Customize `zowe.config.json` in `zowe-config` folder according to your Zowe setup on IBM mainframe.
2) Create a k8s/OCP secret with `zowe.config.json` and `zowe.schema.json` files. Example bash script for OCP secret creation can be found in `zowe-config` folder.
3) Apply tasks from `tekton` folder. You can exclude `git-clone` if you already have equivalent task on your environmtnt.
4) Example pipeline can be found in `tekton/examples`. Customize it according to your need.
5) When running the pipeline, you need to specify the workspaces. For source workspace the best choice is to specify a `VolumeClaimTemplate` and for `zowe-config` specify the secret with zowe config files created in step 2.

## Python container with Zowe SDK
In `python-zowe-container` you can find the Containerfile for building the necessary container image with Python and Zowe SDK installation. The `build.sh` script provides an example for building the multiarch (amd64 and s390x) container image with `podman`.
