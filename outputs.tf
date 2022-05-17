output "vpcs" {
  value = data.aws_vpc.default_vps
}

output "subnets" {
  value = data.aws_subnet.epam_subnets
}