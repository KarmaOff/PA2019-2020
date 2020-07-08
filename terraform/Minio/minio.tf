resource "proxmox_lxc" "Minio-1" { 
    hostname = "Minio-1"
    cores = 2
    memory = "2048"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr5"
        ip = "192.168.30.61/24"
        gw = "192.168.30.254"
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "361"
    rootfs = "local:361" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "Minio-2" { 
    hostname = "Minio-2"
    cores = 2
    memory = "2048"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr5"
        ip = "192.168.30.62/24"
        gw = "192.168.30.254"  
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "362"
    rootfs = "local:362" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}