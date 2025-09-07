variable "yc_token" {
  description = "Yandex Cloud OAuth token"
  type        = string
  sensitive   = true
  default = ""
}

variable "yc_cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
  sensitive   = true
  default     = "b1g3jddf4nv5e9okle7p"
}

variable "yc_folder_id" {
  description = "Yandex Cloud Folder ID"
  type        = string
  sensitive   = true
  default     = "b1gr9h9ra700gv8v5gqk"
}
variable "yc_zone" {
  description = "Yandex Cloud default zone"
  type        = string
  default     = "ru-central1-a"
}

variable "vm_name" {
  description = "Virtual machine name"
  type        = string
  default     = "chapter5-practice-042-36"
}

variable "vm_user" {
  description = "user"
  type        = string
  default     = "ansible"
}

variable "vm_image_id" {
  description = "image ID"
  type        = string
  default     = "fd805090je9atk2b9jon"
}

variable "vm_platform_id" {
  description = "platform ID"
  type        = string
  default     = "standard-v3"
}

variable "vm_cores" {
  description = "CPU cores"
  type        = number
  default     = 2
}

variable "vm_memory" {
  description = "memory"
  type        = number
  default     = 2
}

variable "vm_disk_size" {
  description = "disk size"
  type        = number
  default     = 20
}

variable "vm_preemptible" {
  description = "Use preemptible instance"
  type        = bool
  default     = true
}

variable "network_name" {
  description = "network name"
  type        = string
  default     = "default"
}

variable "ssh_public_keys" {
  description = "SSH"
  type        = list(string)
  sensitive   = true
  default     = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCut4bPCoLmjW+Gx3Vjd8zo49aokFIjJWFoxJ2kglYAd33lMfysVjmedidFeUqKSOQrnlCJbgCLAV6WxJ/OFo13yF6NlY6G1DgLCDTdw9dsyxg4lXp+5Wy2rMnCLws790ewdWi9kXhNr5BYCcfrJ4QGKfbNgDA9/U+yjCXEQdruX3DPOASYa17gQWfPjkniQkDHZneRpk4CJWdeR4fX2DRHmVs8VBBP/zDPip1h4mTZGQ0hdWnn2TlkB0vTMlInBlHLkte4/NGZEhGqFI5D/istpaF6p6ZK5xsNmnFCQC+9RMseJDF5hFRpQOCB5vwfKihXX+idONZJWA1HPmWLt19IU6gBmdRkFBY+tN/Csv0GY3496Zhl1Rvdu6rgs/F74YxxiHuoF1Cqn/YwR+VBPatBHySAaZLEhrHdCNK3TdJVu+k2TQHGEtAfgryIMrgJLY8ADLtIdFj7cRPxajWtkkEOrZYwDdvXnGMzyvpvWWQlilSaxsow697+GuBp5WsQtraqUhbkKkl+1EsEMlczTmfFM7rIJIIJSZUFF3p2fcCSSIgpaWp4fbl9lTuMUDHXbLUSQ40nSdVfnpDaAvw9DG6orkuCVAAKWX8KkTh69aF/7lST1lmtzjyKUpmpS/o9B1m8MrsyvLmXJG8ZgUqUnFVRqPdjtgS+9/sLFi9wK8ab+Q== gitlab-ci-deploy"
  ]
}
