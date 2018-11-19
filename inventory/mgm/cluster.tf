# your Kubernetes cluster name here
cluster_name = "mgm"

# SSH key to use for access to nodes
public_key_path = "~/.ssh/devosp.pub"

# image to use for bastion, masters, standalone etcd instances, and nodes
image = "Container-Linux-stable-work"
# user on the node (ex. core on Container Linux, ubuntu on Ubuntu, etc.)
ssh_user = "core"

# 0|1 bastion nodes
number_of_bastions = 1
flavor_bastion = "7"

# standalone etcds
number_of_etcd = 0

# masters
number_of_k8s_masters = 1
number_of_k8s_masters_no_etcd = 0
number_of_k8s_masters_no_floating_ip = 2
number_of_k8s_masters_no_floating_ip_no_etcd = 0
flavor_k8s_master = "9"

# nodes
number_of_k8s_nodes = 0
number_of_k8s_nodes_no_floating_ip = 3
flavor_k8s_node = "8"

# GlusterFS
# either 0 or more than one
number_of_gfs_nodes_no_floating_ip = 2
gfs_volume_size_in_gb = 50
# Container Linux does not support GlusterFS
image_gfs = "Centos-7-x86_64"
# May be different from other nodes
ssh_user_gfs = "centos"
flavor_gfs_node = "7"

# networking
# networking
network_name = "kube-network"
external_net = "cb5f56c3-867f-4c97-a586-1d6b9d5378ab"
#Above one is public net
subnet_cidr = "192.162.0.0/24"
floatingip_pool = "public"
bastion_allowed_remote_ips = ["0.0.0.0/0"]


