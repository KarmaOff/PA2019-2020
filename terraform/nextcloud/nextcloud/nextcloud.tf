resource "proxmox_lxc" "Nextcloud-1" { 
    hostname = "Nextcloud-1"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.21/24" 
        gw = "192.168.20.254" 
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "221"
    rootfs = "local:30" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "Nextcloud-2" { 
    hostname = "Nextcloud-2"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.22/24"  
        gw = "192.168.20.254"
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "222"
    rootfs = "local:30" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}