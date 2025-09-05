terraform {
  required_version = ">= 1.0"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.95.0"
    }
  }

  # Описание бэкенда хранения состояния
  backend "s3" {

    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket     = "terraform-state-std-042-36"
    region     = "ru-central1-a"
    key        = "terraform.tfstate"
    access_key = ""
    secret_key = ""

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true  # важно для Yandex Cloud
    skip_metadata_api_check     = true
    force_path_style            = true
  }




}
