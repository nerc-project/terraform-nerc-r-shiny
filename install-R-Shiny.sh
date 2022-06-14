#!/bin/bash

# Switch to `root` user
sudo su

# Update the System
yum -y install update

# Install R
yum install epel-release -y
yum -y install R

# Install the Shiny R and other dependencies packages
su - -c "R -e \"install.packages(c('shiny', 'rmarkdown', 'devtools', 'RJDBC'), repos='http://cran.rstudio.com/')\""

# Install Shiny Server
yum install wget -y
wget https://download3.rstudio.org/centos7/x86_64/shiny-server-1.5.17.973-x86_64.rpm
yum install --nogpgcheck shiny-server-1.5.17.973-x86_64.rpm -y

# Start Shiny Server
systemctl start shiny-server
systemctl enable shiny-server