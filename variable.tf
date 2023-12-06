variable "aws_region" {
  type = string
}

variable "aws_ec2_instance_type" {
  type = string
}

variable "ip_ssh_connection" {
  type      = list(string)
  sensitive = true
}

variable "aws_key_pair_name" {
  type      = string
  sensitive = true
}

variable "name" {
  type = string
}

variable "environment" {
  type = string
}

variable "project" {
  type = string
}

variable "owner" {
  type = string
}
