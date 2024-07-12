#!/bin/bash

# Switch to `root` user
sudo su

# Fix Issues Related to Centos EOL
sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

# Update the System
yum update -y
yum config-manager --set-enabled powertools

# Fix Issues Related to Centos EOL
sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

# Install R
yum install epel-release epel-next-release -y

yum install R -y

# Install the Shiny R and other dependencies packages
# su - -c "R -e \"install.packages(c('shiny', 'rmarkdown', 'devtools', 'RJDBC'), repos='http://cran.rstudio.com/')\""
su - -c "R -e \"install.packages(c('shiny', 'rmarkdown'), repos='http://cran.rstudio.com/')\""

# Install Shiny Server
yum install wget -y
wget https://download3.rstudio.org/centos7/x86_64/shiny-server-1.5.17.973-x86_64.rpm
yum install --nogpgcheck shiny-server-1.5.17.973-x86_64.rpm -y

# Start Shiny Server
systemctl start shiny-server
systemctl enable shiny-server