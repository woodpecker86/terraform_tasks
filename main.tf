terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = "~> 1.0"
}

provider "aws" {
  region = "eu-central-1"
  default_tags {
    tags = {
      Owner = "alexey_alexeev@epam.com"
    }
  }
}

data "aws_security_groups" "sec_groups" {}

data "aws_security_group" "epam_sg" {
  count = length(data.aws_security_groups.sec_groups.ids)
  id    = data.aws_security_groups.sec_groups.ids[count.index]
}

data "aws_vpcs" "epam_vpcs" {}

data "aws_subnets" "subnets" {}