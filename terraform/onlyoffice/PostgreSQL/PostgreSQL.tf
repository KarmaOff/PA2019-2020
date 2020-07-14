resource "proxmox_lxc" "PostgreSQL-1" { 
    hostname = "pgsqln1"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.111/24" 
        gw = "192.168.40.254" 
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "4111"
    rootfs = "local:80" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "PostgreSQL-2" { 
    hostname = "pgsqln2"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.112/24" 
        gw = "192.168.40.254" 
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "4112"
    rootfs = "local:80" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}