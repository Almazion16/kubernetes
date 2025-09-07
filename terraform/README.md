# Infrastructure Terraform

Terraform конфигурация для развертывания инфраструктуры в Yandex Cloud.

## Зависимости

- Провайдер Yandex Cloud >= 0.87.0
- Terraform >= 1.5.0

## Входные переменные

| Имя | Описание | Тип | Значение по умолчанию | Обязательная |
|------|-------------|------|---------|:--------:|
| `yc_token` | OAuth или IAM токен Yandex Cloud | `string` | - | да |
| `yc_cloud_id` | ID облака Yandex Cloud | `string` | `"b1g3jddf4nv5e9okle7p"` | да |
| `yc_folder_id` | ID каталога Yandex Cloud | `string` | `"b1gr9h9ra700gv8v5gqk"` | да |
| `yc_zone` | Зона доступности по умолчанию | `string` | `"ru-central1-a"` | нет |
| `vm_name` | Имя виртуальной машины | `string` | `"chapter5-practice-042-36"` | нет |
| `vm_user` | Пользователь для доступа к ВМ | `string` | `"ansible"` | нет |
| `vm_image_id` | ID образа ОС | `string` | `"fd805090je9atk2b9jon"` | нет |
| `vm_platform_id` | Тип платформы ВМ | `string` | `"standard-v3"` | нет |
| `vm_cores` | Количество ядер CPU | `number` | `2` | нет |
| `vm_memory` | Объем памяти в GB | `number` | `2` | нет |
| `vm_disk_size` | Размер загрузочного диска в GB | `number` | `20` | нет |
| `vm_preemptible` | Использовать прерываемую ВМ | `bool` | `true` | нет |
| `network_name` | Имя сети | `string` | `"default"` | нет |
| `ssh_public_keys` | Список SSH публичных ключей | `list(string)` | [ключ gitlab-ci-deploy] | нет |

## Использование

### Базовая конфигурация

```hcl
# Настройка провайдера Yandex Cloud
provider "yandex" {
  token     = var.yc_token
  cloud_id  = var.yc_cloud_id
  folder_id = var.yc_folder_id
  zone      = var.yc_zone
}

# Создание виртуальной машины
module "instance" {
  source = "./modules/tf-yc-instance"
  
  vm_name        = var.vm_name
  vm_user        = var.vm_user
  vm_image_id    = var.vm_image_id
  vm_platform_id = var.vm_platform_id
  vm_cores       = var.vm_cores
  vm_memory      = var.vm_memory
  vm_disk_size   = var.vm_disk_size
  vm_preemptible = var.vm_preemptible
  ssh_public_keys = var.ssh_public_keys
  zone           = var.yc_zone
}
```

### Настройка переменных

Создайте файл `terraform.tfvars`:

```hcl
yc_token     = "ваш_oauth_или_iam_токен"
yc_cloud_id  = "b1g3jddf4nv5e9okle7p"
yc_folder_id = "b1gr9h9ra700gv8v5gqk"
yc_zone      = "ru-central1-a"
vm_name      = "my-custom-vm"
vm_cores     = 4
vm_memory    = 8
```

### Или используйте переменные окружения

```bash
export TF_VAR_yc_token=$(yc iam create-token)
export TF_VAR_yc_cloud_id="b1g3jddf4nv5e9okle7p"
export TF_VAR_yc_folder_id="b1gr9h9ra700gv8v5gqk"
```

## Команды работы с проектом

```bash
# Инициализация Terraform
terraform init

# Просмотр плана развертывания
terraform plan

# Применение конфигурации
terraform apply

# Уничтожение инфраструктуры
terraform destroy
```