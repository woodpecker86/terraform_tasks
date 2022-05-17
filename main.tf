terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
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

data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }

  owners = ["amazon"] # Canonical
}

resource "aws_instance" "test_inst" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  security_groups = [data.aws_security_group.epam_sg.id]
  depends_on = []
  count = 3
  tags = {
    Name = "alexeev_test_tf"
  }

  volume_tags = {
    Owner = "alexey_alexeev@epam.com"
  }
}

data "aws_security_groups" "sec_groups" {}

data "aws_security_group" "epam_sg" {
  count = length(data.aws_security_groups.sec_groups.ids)
  id    = data.aws_security_groups.sec_groups.ids[count.index]
}

data "aws_vpcs" "epam_vpcs" {}

data "aws_vpc" "default_vps" {
  count = length(data.aws_vpcs.epam_vpcs.ids)
  id    = data.aws_vpcs.epam_vpcs.ids[count.index]
}

data "aws_subnets" "subnets" {}

data "aws_subnet" "epam_subnets" {
  count = length(data.aws_subnets.subnets.ids)
  id    = data.aws_subnets.subnets.ids[count.index]
}
