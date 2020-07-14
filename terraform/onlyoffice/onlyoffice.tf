resource "proxmox_lxc" "onlyoffice-1" { 
    hostname = "onlyoffice-1"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.21/24" 
        gw = "192.168.40.254" 
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "421"
    rootfs = "local:30" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "onlyoffice-2" { 
    hostname = "onlyoffice-2"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.22/24"  
        gw = "192.168.40.254"
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "422"
    rootfs = "local:30" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}