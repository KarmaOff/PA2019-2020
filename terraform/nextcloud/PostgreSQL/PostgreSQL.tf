resource "proxmox_lxc" "PostgreSQL-1" { 
    hostname = "PostgreSQL-1"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.111/24" 
        gw = "192.168.20.254" 
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "2111"
    rootfs = "local:80" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "PostgreSQL-2" { 
    hostname = "PostgreSQL-2"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.112/24" 
        gw = "192.168.20.254" 
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "2112"
    rootfs = "local:80" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}