resource "yandex_compute_instance" "vm-1" {
    name = var.vm_name
    platform_id = var.platform_id
    zone        = var.zone

    resources {
        cores  = var.cores
        memory = var.memory 
    }

    boot_disk {
        initialize_params {
            image_id = var.image_id
        }
    }
    network_interface {
    subnet_id = var.subnet_id
    nat       = true
    }

    metadata = {
        user-data = <<-EOT
          #cloud-config
          users:
            - name: ansible
              groups: sudo
              sudo: ["ALL=(ALL) NOPASSWD:ALL"]
              shell: /bin/bash
              ssh-authorized-keys:
                - ${var.ssh_public_keys[0]}
        EOT
  }
}










