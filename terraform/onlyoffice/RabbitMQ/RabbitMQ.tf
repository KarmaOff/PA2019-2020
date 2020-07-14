resource "proxmox_lxc" "rabbitmq-1" { 
    hostname = "rabbitmq-1"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.41/24" 
        gw = "192.168.40.254" 
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "441"
    rootfs = "local:30" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "rabbitmq-2" { 
    hostname = "rabbitmq-2"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.42/24"  
        gw = "192.168.40.254"
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "442"
    rootfs = "local:30" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}

resource "proxmox_lxc" "rabbitmq-3" { 
    hostname = "rabbitmq-3"
    cores = 4
    memory = "4096"
    swap = "4096"
    network {
        name = "eth0"
        bridge = "vmbr3"
        ip = "192.168.40.43/24"  
        gw = "192.168.40.254"
    }
    ostemplate = "local:vztmpl/template-debian_v1-0.tar.gz" 
    password = "Espoir15"
    vmid = "442"
    rootfs = "local:30" 
    storage = "local"
    target_node = "PAR-212482"
    unprivileged = false
}