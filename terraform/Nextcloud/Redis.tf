resource "proxmox_lxc" "RedisN-1" { 
    hostname = "RedisN-1"
    cores = 2
    memory = "2048"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.31/24"  
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "281"
    rootfs = "local:281" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "RedisN-2" { 
    hostname = "RedisN-2"
    cores = 2
    memory = "2048"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.32/24"  
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "281"
    rootfs = "local:281" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}