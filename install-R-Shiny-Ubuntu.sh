#!/bin/bash

# Switch to `root` user
sudo su

# Update the System
apt update -y

# Install helper packages
apt install --no-install-recommends build-essential libz-dev -y

# Install R
apt install r-base -y

# Install the Shiny R and other dependencies packages
# su - -c "R -e \"install.packages(c('shiny', 'rmarkdown', 'devtools', 'RJDBC'), repos='http://cran.rstudio.com/')\""
su - -c "R -e \"install.packages(c('shiny', 'rmarkdown'), repos='http://cran.rstudio.com/')\""

# Install `gdebi` (which is used to install Shiny Server and all of its dependencies)
apt install gdebi-core -y

# Install Shiny Server
wget https://download3.rstudio.org/ubuntu-18.04/x86_64/shiny-server-1.5.22.1017-amd64.deb

gdebi shiny-server-1.5.22.1017-amd64.deb

# Start Shiny Server
# systemctl start shiny-server
# systemctl enable shiny-server