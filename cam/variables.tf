variable ibm_bmx_api_key {
    description = "Bluemix API Key"
    default = ""
}
variable ibm_sl_username {
    description = "IBM Cloud Infrastructure Username"
    default = ""
}
variable ibm_sl_api_key {
    description = "IBM Cloud Infrastructure Password"
    default = ""
}
variable ssh_key_name {
    description = "SSH Public Key Label"
}
variable ssh_public_key {
    description = "SSH Public Key"
    default = ""
}
variable "ssh_user" {
    description = "SSH User"
    default = "root"
}
variable datacenter {
    description = "Softlayer Data Center code"
    default = "sgn01"
}
variable "domain" {
    description = "Instance Domain"
    default = "icp.demo"
}
variable "os_reference" {
    description = "OS Reference Code: ubuntu: UBUNTU_16_64 Redhat: REDHAT_7_64"
    default = "UBUNTU_16_64"
}
##### ICP Instance details ######
variable "icp_version" {
    description = "ICP Version"
    default = "2.1.0.1"
}
variable "network_cidr" {
    default = "172.16.0.0/16"
}
variable "cluster_ip_range" {
    default = "192.168.0.1/24"
}
variable "cluster_name" {
    default = "mycluster"
}
variable "icpadmin_password" {
    description = "ICP admin password"
    default = "admin"
}
variable "install_gluster" {
    default = false
}
variable icp_source_server {
    default = ""
}
variable icp_source_user {
    default = ""
}
variable icp_source_password {
    default = ""
}
variable icp_source_path {
    default = ""
}
variable "instance_prefix" {
    default = "icp"
}
variable "master" {
  type = "map"
  default = {
    nodes       = "1"
    name        = "master"
    cpu_cores   = "8"
    disk_size   = "25" // GB
    kubelet_lv  = "10"
    docker_lv   = "50"
    registry_lv = "15"
    etcd_lv     = "4"
    management_lv = "20"    
    local_disk  = false
    memory      = "8192"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
  }
}
variable "proxy" {
  type = "map"
  default = {
    nodes       = "1"
    name        = "proxy"
    cpu_cores   = "4"
    disk_size   = "25" // GB
    kubelet_lv  = "10"
    docker_lv   = "39"
    local_disk  = false
    memory      = "4096"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
  }
}
variable "management" {
  type = "map"
  default = {
    nodes       = "1"
    name        = "management"
    cpu_cores   = "8"
    disk_size   = "25" // GB
    kubelet_lv  = "10"
    docker_lv   = "40"
    management_lv = "49"
    local_disk  = false
    memory      = "8192"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
  }
}
variable "worker" {
  type = "map"
  default = {
    nodes       = "3"
    name        = "worker"
    cpu_cores   = "8"
    disk_size   = "25" // GB
    kubelet_lv  = "10"
    docker_lv   = "89"
    glusterfs   = "100"
    local_disk  = false
    memory      = "8192"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
  }
}
variable "gluster" {
  type = "map"
  default = {
    nodes       = "0"
    name        = "gluster"
    cpu_cores   = "2"
    disk_size   = "25" // GB
    glusterfs   = "100"
    local_disk  = false
    memory      = "2048"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
  }
}