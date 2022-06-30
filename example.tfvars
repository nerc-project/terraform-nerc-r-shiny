################
#  Example tfvars file, you can change any variable used in inputs.tf here
################

# NERC VM options

# number of VM's to start
quantity = "1"

image_name = "centos-7-x86_64"
image_id   = "41eafa05-c264-4840-8c17-746e6a388c2d"

# VM Flavor: https://nerc-project.github.io/nerc-docs/openstack/create-and-connect-to-the-VM/flavors/
# Availability depends upon your Quota i.e. vCPU / RAM / Disk, etc.
vm_flavor = "cpu-a.2"

##  SSH Keypair control
keypair-name = "your-key-pair-name"
keypair-path = "~/.ssh/your-public-key-pair.key.pub"

# User Data file path
user-data-path = "./install-R-Shiny.sh"

#  Network options

secgroup = "your-ssh-only-sec-group"

network_name = "default_network"
