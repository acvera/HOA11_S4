FROM ubuntu: latest
MAINTAINER eysiiii  <qacsolivera@tip.edu.ph>

# Skip Prompts
ARG DEBIAN_FRONTEND=noninteractive

#Update Packages
RUN apt-get update && \ apt-get install -y apache2 mysql-server
# Install Packages
RUN apt install -y apache2 vim-nox

# Set Entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
