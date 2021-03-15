
resource "proxmox_lxc" "HaproxyN-3" { 
    hostname = "HaproxyN-3"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.91/24"  
        gw = "192.168.20.254"
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "291"
    rootfs = "local:8" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "HaproxyN-4" { 
    hostname = "HaproxyN-4"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.92/24"
        gw = "192.168.20.254"  
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "292"
    rootfs = "local:8" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}