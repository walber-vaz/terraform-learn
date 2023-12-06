variable "aws_region" {
  type        = string
  description = "AWS region to deploy to"

  # Isso valida se o valor da variável está de acordo com a expressão regular
  validation {
    condition     = can(regex("^us-.*", var.aws_region))
    error_message = "Must be a valid AWS region"
  }

  # sensitive = true # Isso faz com que o valor da variável não seja exibido no console
}

variable "aws_ec2_instance_type" {
  type        = string
  description = "AWS EC2 instance type"

  # Isso valida se o valor da variável está de acordo com a expressão regular
  validation {
    condition     = can(regex("^t2.*", var.aws_ec2_instance_type))
    error_message = "Must be a valid EC2 instance type"
  }

  # sensitive = true # Isso faz com que o valor da variável não seja exibido no console
}

variable "ip_ssh_connection" {
  type      = list(string)
  sensitive = true
}


variable "aws_key_pair_name" {
  type        = string
  description = "AWS key pair name"
  sensitive   = true
}
