resource "aws_security_group" "w2k_sg" {
  ingress = [
    {
      from_port = 0
      to_port   = 0
      protocol  = "-1"
      self      = true
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = var.ip_ssh_connection
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["::/0"]
    },
  ]

  egress = [
    {
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
    }
  ]
}
