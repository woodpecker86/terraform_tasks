output "vpcs" {
  value = data.aws_vpcs.epam_vpcs.ids
}

output "subnets" {
  value = data.aws_subnets.subnets.ids
}

output "sec_groups" {
  value = data.aws_security_group.epam_sg[*].name
}

output "instance_id" {
  value = module.test_module.instance_id
}

output "public_dns" {
  value = module.test_module.public_dns
}

output "db_endpoint" {
  value = module.test_module.db_endpoint
}