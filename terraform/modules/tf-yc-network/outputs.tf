output "yandex_vpc_subnets" {
  value       = data.yandex_vpc_subnet.default
}

output "subnet_id" {
  value = values(data.yandex_vpc_subnet.default)[0].id
}

output "network_id" {
  value = data.yandex_vpc_network.default.id
}
