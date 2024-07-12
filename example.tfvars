################
#  Example tfvars file, you can change any variable used in inputs.tf here
################

# NERC VM options

# number of VM's to start
quantity = "1"

image_name = "centos-8-x86_64"
image_id   = "14475f0f-3663-4ce7-a2dd-3cc206105bdf"

# VM Flavor: https://nerc-project.github.io/nerc-docs/openstack/create-and-connect-to-the-VM/flavors/
# Availability depends upon your Quota i.e. vCPU / RAM / Disk, etc.
vm_flavor = "cpu-su.2"

##  SSH Keypair control
keypair-name = "your-private-key-pair"
keypair-path = "./your-private-key-pair.pub"

# User Data file path
user-data-path = "./install-R-Shiny.sh"

#  Network options

secgroup = "your-ssh-only-sec-group"

network_name = "default_network"
