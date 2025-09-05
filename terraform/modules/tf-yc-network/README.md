# Module: tf-yc-network

Terraform модуль для работы с VPC сетями и подсетями в Yandex Cloud.

## Зависимости

- Провайдер Yandex Cloud >= 0.87.0
- Terraform >= 1.5.0

## Входные переменные

| Имя | Описание | Тип | Значение по умолчанию |
|------|-------------|------|---------|
| `network_zones` | Список зон доступности | `set(string)` | `["ru-central1-a", "ru-central1-b", "ru-central1-c"]` |
| `vpc_name` | Имя VPC сети | `string` | `"default"` |

## Выходные значения

- `network_id`: ID VPC сети
- `network_name`: Имя VPC сети  
- `subnets`: Map подсетей по зонам
- `subnet_ids`: Список ID подсетей

## Использование

```hcl
module "network" {
  source = "./modules/tf-yc-network"

  network_zones = ["ru-central1-a", "ru-central1-b"]
  vpc_name      = "my-production-network"
}