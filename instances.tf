resource "aws_instance" "weshopify-public-1a-machine" {
  tags = {
    "Name" = "weshopify-public-1a-machine"
  }
  ami = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  key_name = "beyond-platform-aws-key-pair"
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.weshopify-sg.id]
  subnet_id = aws_subnet.weshopify-subnet-public-1a.id
}


resource "aws_instance" "weshopify-private-1a-machine" {
  tags = {
    "Name" = "weshopify-private-1a-machine"
  }
  ami = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  key_name = "beyond-platform-aws-key-pair"
  #associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.weshopify-sg.id]
  subnet_id = aws_subnet.weshopify-subnet-private-1a.id
}