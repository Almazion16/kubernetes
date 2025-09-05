variable "yc_token" {
  type        = string
  sensitive   = true
  default = ""
}

variable "yc_cloud_id" {
  type        = string
  sensitive   = true
  default     = "b1g3jddf4nv5e9okle7p"
}

variable "yc_folder_id" {
  type        = string
  sensitive   = true
  default     = "b1gr9h9ra700gv8v5gqk"
}

variable "ssh_public_keys" {
  type        = list(string)
  sensitive   = true
  default     = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCut4bPCoLmjW+Gx3Vjd8zo49aokFIjJWFoxJ2kglYAd33lMfysVjmedidFeUqKSOQrnlCJbgCLAV6WxJ/OFo13yF6NlY6G1DgLCDTdw9dsyxg4lXp+5Wy2rMnCLws790ewdWi9kXhNr5BYCcfrJ4QGKfbNgDA9/U+yjCXEQdruX3DPOASYa17gQWfPjkniQkDHZneRpk4CJWdeR4fX2DRHmVs8VBBP/zDPip1h4mTZGQ0hdWnn2TlkB0vTMlInBlHLkte4/NGZEhGqFI5D/istpaF6p6ZK5xsNmnFCQC+9RMseJDF5hFRpQOCB5vwfKihXX+idONZJWA1HPmWLt19IU6gBmdRkFBY+tN/Csv0GY3496Zhl1Rvdu6rgs/F74YxxiHuoF1Cqn/YwR+VBPatBHySAaZLEhrHdCNK3TdJVu+k2TQHGEtAfgryIMrgJLY8ADLtIdFj7cRPxajWtkkEOrZYwDdvXnGMzyvpvWWQlilSaxsow697+GuBp5WsQtraqUhbkKkl+1EsEMlczTmfFM7rIJIIJSZUFF3p2fcCSSIgpaWp4fbl9lTuMUDHXbLUSQ40nSdVfnpDaAvw9DG6orkuCVAAKWX8KkTh69aF/7lST1lmtzjyKUpmpS/o9B1m8MrsyvLmXJG8ZgUqUnFVRqPdjtgS+9/sLFi9wK8ab+Q== gitlab-ci-deploy"
  ]
}


variable "vm_name" {
  type        = string
  default     = "chapter5-practice-042-36"
}

variable "vm_user" {
  type        = string
  default     = "ansible"
}

variable "zone" {
  type        = string
}

variable "subnet_id" {
  type        = string
}

variable "image_id" {
  type        = string
  default     = "fd805090je9atk2b9jon"
}

variable "platform_id" {
  type        = string
  default     = "standard-v3"
}

variable "cores" {
  type        = number
  default     = 2
}

variable "memory" {
  type        = number
  default     = 2
}

variable "disk_size" {
  type        = number
  default     = 20
}

variable "preemptible" {
  type        = bool
  default     = true
}
