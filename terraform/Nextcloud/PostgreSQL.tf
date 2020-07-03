resource "proxmox_lxc" "PostgreSQL-1" { 
    hostname = "PostgreSQL-1"
    cores = 4
    memory = "4 096‬"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.111/24"  
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "2111"
    rootfs = "local:2111" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "PostgreSQL-2" { 
    hostname = "PostgreSQL-2"
    cores = 4
    memory = "4 096‬"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.112/24"  
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "2112"
    rootfs = "local:2112" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}