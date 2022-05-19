variable "db_user" {
  default     = "alexey"
  description = "Database user"
  type        = string
}

variable "db_pass" {
  description = "Password for a database user"
  type        = string
}

variable "db_volume" {
  default     = 5
  description = "Volume of a creating RDS"
  type        = number
}

variable "instance_type" {
  default     = "t2.micro"
  description = "EC2 instance type"
  type        = string
}

variable "security_groups" {
  default     = ["sg-0a8b5db2a7dcca42a"]
  description = "epam-by-ru security group"
  type        = list(string)
}

variable "subnets" {
  description = "List of subnets"
  type        = list(string)
}

variable "ssh_key_path" {
  description = "ssh key path for connection"
  type        = string
}

variable "ssh_key_name" {
  default     = "wordpress-main-key"
  description = "ssh key name for connection"
  type        = string
}

variable "userdata" {
  description = "Path to userdata.sh"
  type        = string
}