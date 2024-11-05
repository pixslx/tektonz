#!/bin/bash

oc create secret generic zowe-config --from-file=zowe.config.json --from-file=zowe.schema.json