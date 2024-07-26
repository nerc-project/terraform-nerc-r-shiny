#!/bin/bash

# Switch to `root` user
sudo su

# Update the System
dnf update -y
dnf config-manager --set-enabled crb

# Install R
dnf install epel-release -y

dnf install R -y

# Install the Shiny R and other dependencies packages
# su - -c "R -e \"install.packages(c('shiny', 'rmarkdown', 'devtools', 'RJDBC'), repos='http://cran.rstudio.com/')\""
su - -c "R -e \"install.packages(c('shiny', 'rmarkdown'), repos='http://cran.rstudio.com/')\""

# Install Shiny Server
dnf install wget -y
wget https://download3.rstudio.org/centos7/x86_64/shiny-server-1.5.17.973-x86_64.rpm
dnf install --nogpgcheck shiny-server-1.5.17.973-x86_64.rpm -y

# Start Shiny Server
systemctl start shiny-server
systemctl enable shiny-server