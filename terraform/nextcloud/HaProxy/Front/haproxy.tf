resource "proxmox_lxc" "HaproxyN-1" { 
    hostname = "HaproxyN-1"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.81/24"
        gw = "192.168.20.254"  
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "281"
    rootfs = "local:8" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "HaproxyN-2" { 
    hostname = "HaproxyN-2"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.82/24"
        gw = "192.168.20.254"  
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "282"
    rootfs = "local:8" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}
