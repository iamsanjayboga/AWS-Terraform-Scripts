resource "aws_security_group" "weshopify-sg" {
  
  vpc_id      = aws_vpc.Weshopify-vpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 65500
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "weshopify-sg"
  }
}