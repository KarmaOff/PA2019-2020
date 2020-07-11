resource "proxmox_lxc" "RedisN-1" { 
    hostname = "redisn-1"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.31/24" 
        gw = "192.168.20.254" 
    }
    ostemplate = "local:vztmpl/template-debian9_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "231"
    rootfs = "local:231" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "RedisN-2" { 
    hostname = "redisn-2"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.32/24"  
        gw = "192.168.20.254"
    }
    ostemplate = "local:vztmpl/template-debian9_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "232"
    rootfs = "local:232" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}