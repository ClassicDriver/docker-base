##########################################################################################
# ClassicDriver Base Docker image with cUrl and wget (installed)
##########################################################################################

FROM debian:wheezy

MAINTAINER Team Nitrous <nitrous@classicdriver.com>

#############################################
# cUrl and wget installation
#############################################
# Updating packages lists, installing applications (curl and wget) and
# cleaning the cleaning up the apt cache in order to reduce image size
RUN apt-get update \
    && apt-get install -y \
    curl \
    wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
