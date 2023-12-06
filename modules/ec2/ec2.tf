data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_key_pair" "w2k_ssh" {
  key_name   = "w2k_ssh"
  public_key = var.aws_key_pair_name

  tags = {
    Name = "w2k_ssh"
  }
}

resource "aws_security_group" "w2k_sg" {
  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    self      = true
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ip_ssh_connection
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
  }
}

resource "aws_instance" "web" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.aws_ec2_instance_type
  security_groups = [aws_security_group.w2k_sg.name]
  key_name        = aws_key_pair.w2k_ssh.key_name

  tags = {
    Name = "terraform-hello-world"
  }
}
