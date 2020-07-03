resource "proxmox_lxc" "Nextcloud-1" { 
    hostname = "Nextcloud-1"
    cores = 4
    memory = "4 096‬"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.21/24"  
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "221"
    rootfs = "local:221" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "Nextcloud-2" { 
    hostname = "Nextcloud-2"
    cores = 4
    memory = "4 096‬"
    swap = "2048"
    network {
        name = "eth0"
        bridge = "vmbr2"
        ip = "192.168.20.22/24"  
    }
    ostemplate = "local:vztmpl/debian-10.0-standard_10.0-1_amd64.tar.gz" 
    password = "Espoir15"
    vmid = "222"
    rootfs = "local:222" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}