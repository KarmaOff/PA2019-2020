resource "proxmox_lxc" "HaproxyN-1" { 
    hostname = "HaproxyN-1"
    cores = 4
    memory = "4 096‬"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.81/24"  
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "281"
    rootfs = "local:281" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "HaproxyN-2" { 
    hostname = "HaproxyN-2"
    cores = 4
    memory = "4 096‬"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.82/24"  
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "282"
    rootfs = "local:282" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "HaproxyN-3" { 
    hostname = "HaproxyN-3"
    cores = 4
    memory = "4 096‬"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.83/24"  
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "283"
    rootfs = "local:283" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "HaproxyN-4" { 
    hostname = "HaproxyN-4"
    cores = 4
    memory = "4 096‬"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.84/24"  
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "284"
    rootfs = "local:284" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}