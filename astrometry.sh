#!/bin/bash

ASTROMETRY_DATA="${ASTROMETRY_DATA:-/home/${HOME}/astrometry-data}"

sudo docker run -w /data \
    -v ${PWD}:/data \
    -v ${ASTROMETRY_DATA}:/usr/local/astrometry/data \
    astrometry $*
