resource "proxmox_lxc" "Sidekick-1" { 
    hostname = "Sidekick-1"
    cores = 4
    memory = "4096"
    swap = "4096"
    cpulimit = "0"
    network {
        name = "eth0"
        bridge = "vmbr5"
        ip = "192.168.30.81/24"
        gw = "192.168.30.254"
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "381"
    rootfs = "local:8" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "Sidekick-2" { 
    hostname = "Sidekick-2"
    cores = 4
    memory = "4096"
    swap = "4096"
    cpulimit = "0"
    network {
        name = "eth0"
        bridge = "vmbr5"
        ip = "192.168.30.82/24"
        gw = "192.168.30.254"  
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "382"
    rootfs = "local:8" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}