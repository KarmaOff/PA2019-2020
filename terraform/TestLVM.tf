provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = "https://195.154.154.121:8006/api2/json"
    pm_user = "root@pam"
    pm_password = "Espoir15"
}

resource "proxmox_lxc" "lxc-test" { 
    hostname = "lxc-test-host"
    cores = 1
    memory = "1024"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.15/24"
        gw = "192.168.20.254" 
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "201"
    storage = "local"
    rootfs = "local:8" 
    target_node = "PAR-212482"
    unprivileged = false
    onboot = true
}

resource "proxmox_lxc" "lxc-test2" { 
    hostname = "lxc-test-host-2"
    cores = 1
    memory = "1024"
    swap = "2048"
    network {
        name = "eth0"
        ip = "192.168.20.16/24"
        gw = "192.168.20.254" 
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "202"
    storage = "local"
    rootfs = "local:8" 
    target_node = "PAR-212482"
    unprivileged = false
    onboot = true
}