resource "proxmox_lxc" "Rediso-1" { 
    hostname = "rediso-1"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.31/24" 
        gw = "192.168.40.254" 
    }
    ostemplate = "local:vztmpl/template-debian9_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "431"
    rootfs = "local:20" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "Rediso-2" { 
    hostname = "rediso-2"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.32/24"  
        gw = "192.168.40.254"
    }
    ostemplate = "local:vztmpl/template-debian9_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "432"
    rootfs = "local:20" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}