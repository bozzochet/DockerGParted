#FROM ubuntu:22.04
FROM ubuntu:latest

MAINTAINER Matteo Duranti matteo.duranti@infn.it

#--- Upgrade
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Rome
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

#--- Upgrate and install wget
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt-get install wget -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

#--- Upgrate and install make and gcc
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt-get install make gcc -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

#--- Upgrate and install lsusb
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt-get install usbutils -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

#--- Upgrate and install gparted
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt-get install gparted -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
