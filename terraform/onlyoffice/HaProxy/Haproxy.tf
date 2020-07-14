resource "proxmox_lxc" "Haproxyo-1" { 
    hostname = "Haproxyo-1"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.81/24"
        gw = "192.168.40.254"  
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "481"
    rootfs = "local:8" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "Haproxyo-2" { 
    hostname = "Haproxyo-2"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.82/24"
        gw = "192.168.40.254"  
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "482"
    rootfs = "local:8" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "Haproxyo-3" { 
    hostname = "Haproxyo-3"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.91/24"  
        gw = "192.168.40.254"
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "491"
    rootfs = "local:8" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "Haproxyo-4" { 
    hostname = "Haproxyo-4"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.92/24"
        gw = "192.168.40.254"  
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "492"
    rootfs = "local:8" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}