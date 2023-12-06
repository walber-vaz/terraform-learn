resource "aws_eip" "w2k_eip" {
  instance = aws_instance.web.id
  domain   = "vpc"

  tags = local.common_tags
}
