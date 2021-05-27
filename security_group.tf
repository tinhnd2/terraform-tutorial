resource "aws_security_group" "security_group_01" {
  name = "Allow income http/https/ssh"
  description = "Allow http https ssh"
  vpc_id = var.VPC_ID

  ingress {
    protocol = "tcp"
    from_port = 80
    to_port = 80
    description = "http"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    protocol = "tcp"
    from_port = 443
    to_port = 443
    description = "https"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    protocol = "tcp"
    from_port = 22
    to_port = 22
    description = "ssh"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    protocol = "tcp"
    from_port = 22
    to_port = 22
    description = "ssh"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allows_website"
  }
}