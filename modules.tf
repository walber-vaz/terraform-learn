module "ec2_instance" {
  source                = "./modules/ec2"
  aws_ec2_instance_type = var.aws_ec2_instance_type
  aws_region            = var.aws_region
  ip_ssh_connection     = var.ip_ssh_connection
  aws_key_pair_name     = var.aws_key_pair_name
  common_tags           = var.common_tags
}
