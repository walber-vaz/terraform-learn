resource "aws_key_pair" "w2k_ssh" {
  key_name   = "w2k_ssh"
  public_key = var.aws_key_pair_name

  tags = local.common_tags
}
