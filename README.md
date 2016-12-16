# astrometry-docker
## Introduction
This project provides a Dockerfile for creating a docker image that installs and builds the applications at [astrometry.net](http://astrometry.net) and a helper script for running those applications.
## Requirements
Be sure [docker](http://docker.com) is setup and configured.
## Setup
Create docker image run `docker build . -t astrometry`
## Usage
Download index files from http://astrometry.net/doc/build-index.html.  By default it will assumed that these files are in  `${HOME}/astrometry-data/`.  This can be changed by setting the `ASTROMETRY_DATA` environment variable to the path  of your choosing.

To run [astrometry.net](http://astrometry.net/) applications use the provided `astrometry.sh` to run the application you want.  For example:
```
# astrometry.sh solve-field starfield.jpg
```
For more information on astrometry applications see the docs here http://astrometry.net/doc/readme.html  
