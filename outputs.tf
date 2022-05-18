output "vpcs" {
  value = data.aws_vpcs.epam_vpcs.ids
}

output "subnets" {
  value = data.aws_subnets.subnets.ids
}

output "sec_groups" {
  value = data.aws_security_group.epam_sg[*].name
}