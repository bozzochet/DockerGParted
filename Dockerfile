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

#--- Upgrate and install lsusb
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt-get install usbutils -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

#--- Upgrate and install gparted additional packages
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt-get install btrfs-progs e2fsprogs f2fs-tools dosfstools mtools hfsutils hfsprogs jfsutils nilfs-tools ntfs-3g reiser4progs reiserfsprogs udftools util-linux xfsprogs xfsdump dmsetup dmraid mdadm cryptsetup dmsetup gpart -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

#--- Upgrate and install gparted
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt-get install gparted -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
