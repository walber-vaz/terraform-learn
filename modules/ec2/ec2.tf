resource "aws_instance" "web" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.aws_ec2_instance_type
  security_groups = [aws_security_group.w2k_sg.name]
  key_name        = aws_key_pair.w2k_ssh.key_name

  tags = {
    Name = "terraform-hello-world"
  }
}
