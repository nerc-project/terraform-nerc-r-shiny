################
#  Example tfvars file, you can change any variable used in inputs.tf here
################

# NERC VM options

# number of VM's to start
quantity = "1"

image_name = "almalinux-9-x86_64"
image_id   = "263f045e-86c6-4344-b2de-aa475dbfa910"

# VM Flavor: https://nerc-project.github.io/nerc-docs/openstack/create-and-connect-to-the-VM/flavors/
# Availability depends upon your Quota i.e. vCPU / RAM / Disk, etc.
vm_flavor = "cpu-su.2"

##  SSH Keypair control
keypair-name = "your-private-key-pair"
keypair-path = "./your-private-key-pair.pub"

# User Data file path
# user-data-path = "./install-R-Shiny-Ubuntu.sh"
# user-data-path = "./install-R-Shiny-Centos.sh"
user-data-path = "./install-R-Shiny-AlmaLinux.sh"

#  Network options

secgroup = "your-ssh-only-sec-group"

network_name = "default_network"
