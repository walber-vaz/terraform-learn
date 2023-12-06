locals {
  common_tags = {
    Name        = var.name
    Environment = var.environment
    Project     = var.project
    Owner       = var.owner
    Terraform   = true
  }
}
