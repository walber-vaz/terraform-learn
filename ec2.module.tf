module "ec2_instance" {
  source                = "./modules/ec2"
  aws_ec2_instance_type = var.aws_ec2_instance_type
  aws_region            = var.aws_region
}
