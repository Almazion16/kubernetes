# Module: tf-yc-instance

Terraform модуль для создания виртуальных машин в Yandex Cloud.

## Зависимости

- Провайдер Yandex Cloud >= 0.87.0
- Terraform >= 1.5.0

## Входные переменные

| Имя | Описание | Тип | Значение по умолчанию |
|------|-------------|------|---------|
| `vm_name` | Имя виртуальной машины | `string` | `"terraform-vm"` |
| `zone` | Зона доступности | `string` | `"ru-central1-a"` |
| `platform_id` | ID платформы | `string` | `"standard-v3"` |
| `cores` | Количество ядер CPU | `number` | `2` |
| `memory` | Объем памяти в GB | `number` | `2` |
| `image_id` | ID образа загрузочного диска | `string` | `"fd85f37uh98ldl1omk30"` |
| `disk_size` | Размер загрузочного диска в GB | `number` | `10` |
| `subnet_id` | ID подсети для сетевого интерфейса | `string` | - |
| `nat` | Включить NAT | `bool` | `false` |
| `ssh_public_key` | Путь к SSH публичному ключу | `string` | `"~/.ssh/gitlab_deploy_key.pub"` |

## Выходные значения

- `vm_id`: ID созданной виртуальной машины
- `internal_ip`: Внутренний IP адрес
- `external_ip`: Внешний IP адрес (если NAT включен)
- `fqdn`: Полное доменное имя

## Использование

```hcl
module "instance" {
  source = "./modules/tf-yc-instance"

  vm_name        = "my-production-vm"
  zone           = "ru-central1-a"
  platform_id    = "standard-v3"
  cores          = 4
  memory         = 8
  image_id       = "fd805090je9atk2b9jon"
  disk_size      = 30
  subnet_id      = module.network.subnets["ru-central1-a"].id
  nat            = true
  ssh_public_key = "~/.ssh/gitlab_deploy_key.pub"
}