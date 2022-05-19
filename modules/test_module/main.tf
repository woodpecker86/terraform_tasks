data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }

  owners = ["amazon"] # Canonical
}

resource "aws_instance" "test_inst" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups
  subnet_id              = var.subnets[0]

  key_name               = var.ssh_key_name

  user_data = file(var.userdata)

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file(var.ssh_key_path)
    host = self.public_ip
    timeout = "3m"
  }

  provisioner "remote-exec" {
    inline = [
      "sleep 30",
      "sudo nginx -v"
    ]
  }

  tags = {
    Name = "alexeev_test_tf"
  }

  volume_tags = {
    Owner = "alexey_alexeev@epam.com"
  }
}

resource "aws_db_instance" "alexeev-db-tf" {
  allocated_storage    = var.db_volume
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  identifier           = "alexeev-db-tf"
  db_name              = "nginx_db"
  username             = var.db_user
  password             = var.db_pass
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  vpc_security_group_ids = var.security_groups
}