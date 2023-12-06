output "ip_address" {
  value = module.ec2_instance.ip_address
}

output "public_dns" {
  value = module.ec2_instance.public_dns
}

output "eip" {
  value = module.ec2_instance.eip
}
