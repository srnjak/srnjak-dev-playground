FROM ubuntu:22.04
MAINTAINER Grega Krajnc, srnjak.com

RUN mkdir /playground

# Set up the working directory
WORKDIR /playground

# Unminimize the container
RUN yes | unminimize

# Install necessary tools
RUN apt-get update && \
    apt-get install -y sudo joe

# Add srnjak.com apt sources
RUN apt-get update && \
    apt-get install -y ca-certificates gnupg2 curl && \
    curl -sSL https://ci.srnjak.com/nexus/repository/public/gpg/public.gpg.key | gpg --dearmor -o /etc/apt/trusted.gpg.d/srnjak.gpg

# Add srnjak.com apt release source
RUN echo "deb https://ci.srnjak.com/nexus/repository/apt-release release main" | tee -a /etc/apt/sources.list.d/srnjak.list

# Add srnjak.com apt preview source
RUN echo "deb https://ci.srnjak.com/nexus/repository/apt-preview preview main" | tee -a /etc/apt/sources.list.d/srnjak.list
