output "ip_address" {
  value = aws_instance.web.public_ip
}

output "public_dns" {
  value = aws_instance.web.public_dns
}

output "eip" {
  value = aws_eip.w2k_eip.public_ip
}
