variable "aws_region" {
  # default e usado quando o valor da variável não é passado
  default     = "us-east-1"
  type        = string
  description = "AWS region to deploy to"

  # Isso valida se o valor da variável está de acordo com a expressão regular
  # validation {
  #   condition     = can(regex("^us-.*", var.aws_region))
  #   error_message = "Must be a valid AWS region"
  # }

  # sensitive = true # Isso faz com que o valor da variável não seja exibido no console
}

variable "aws_ec2_instance_type" {
  # default e usado quando o valor da variável não é passado
  default     = "t2.micro"
  type        = string
  description = "AWS EC2 instance type"

  # Isso valida se o valor da variável está de acordo com a expressão regular
  # validation {
  #   condition     = can(regex("^t2.*", var.aws_ec2_instance_type))
  #   error_message = "Must be a valid EC2 instance type"
  # }

  # sensitive = true # Isso faz com que o valor da variável não seja exibido no console
}
