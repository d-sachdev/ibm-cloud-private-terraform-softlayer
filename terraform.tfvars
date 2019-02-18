ibm_sl_username="IBM1529491"
ibm_sl_api_key="365b4b9f735b06f2dfb1a44db7c32465bf4f7b0f85d29714d0857887a6a2432e"
datacenter = "dal06"                #use one of SoftLayer Datacenter code
ssh_key_name = "sl-key"             #name of ssh key to be created in SoftLayer
ssh_user = "root"                   #OS username
icpadmin_password = "your-password" #ICP admin password
icp_version = "3.1.2"             #ICP Version
domain = "icp.demo"                 #OS Domain
os_reference = "UBUNTU_16_64"       #OS Reference Code from SoftLayer: UBUNTU_16_64 or REDHAT_7_64
instance_prefix = "icp"             #Instance Prefix
network_cidr = "172.16.0.0/16"      #ICP Network CIDR
cluster_ip_range = "192.168.0.1/24" #ICP Cluster IP Range
cluster_name = "sgdemo"             #ICP Cluster Name
install_gluster = true              #Install Gluster Flag
gluster_volume_type = "none"        #Gluster Volume Type. Sample: none, replicate:3, disperse:4:2
heketi_admin_pwd = "your-password"  #Heketi API admin password
disable_management = ["istio", "custom-metrics-adapter"] #Default Disabled management component v2.1.0.3
master = {
    nodes       = "1"               #Number of Master Node. Minimum: 1, Maximum: 1 for ICP Community edition
    name        = "master"
    cpu_cores   = "4"
    disk_size   = "25"              #OS Disk size in GB. Recommended to keep default value 25 GB
    kubelet_lv  = "10"              #Size of Kubelet volume
    docker_lv   = "50"              #Size of Docker volume
    etcd_lv     = "4"               #Size of etcd volume
    registry_lv = "35"              #Size of registry volume
    management_lv = "100"           #Size of Management volume
    local_disk  = false
    memory      = "8192"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
}
proxy = {
    nodes       = "0"               #Number of Proxy Node. Minimum: 0 Maximum: 1 for ICP Community edition
    name        = "proxy"
    cpu_cores   = "2"
    disk_size   = "25"
    kubelet_lv  = "10"
    docker_lv   = "64"
    local_disk  = false
    memory      = "4096"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
}
management = {
    nodes       = "0"               #Number of Management Node. Minimum: 0 Maximum: 1 for ICP Community edition
    name        = "mgmt"
    cpu_cores   = "4"
    disk_size   = "25"
    kubelet_lv  = "10"
    docker_lv   = "50"
    management_lv = "139"            #Size of Management volume
    local_disk  = false
    memory      = "8192"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
}
va = {
  nodes                = "0"        #Vulnerability Assessor Node (Enterprise Edition Only). Minimum 0, or 1/3/5
  name                 = "va"
  cpu_cores            = "4"
  disk_size            = "100"
  kubelet_lv           = "10"
  docker_lv            = "50"
  va_lv                = "139"
  local_disk           = false
  memory               = "8192"
  network_speed        = "1000"
  private_network_only = false
  hourly_billing       = true
}
worker = {
    nodes       = "2"               #Number of Worker Node. Minimum: 1 Recommended: 3
    name        = "worker"
    cpu_cores   = "8"
    disk_size   = "25"
    kubelet_lv  = "10"
    docker_lv   = "89"
    local_disk  = false
    memory      = "8192"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
}
gluster = {
    nodes       = "3"               #Gluster Node. Minimum 0 or 3 or higher odd number
    name        = "gluster"
    cpu_cores   = "2"
    disk_size   = "25"
    glusterfs   = "100"             #Additional GlusterFS Volume (optional)
    local_disk  = false
    memory      = "2048"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
}
#icp_source_server="x.x.x.x"                    #SFTP Server for Enterprise Edition
#icp_source_user="ftp-user"                     #SFTP Login user
#icp_source_password="ftp-password"             #SFTP Login password
#icp_source_path="path-to-icp-enterprise-file"  #Download file location in SFTP server
