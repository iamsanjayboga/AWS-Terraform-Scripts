resource "aws_internet_gateway" "weshopify-public-ig" {
  tags = {
    "Name" = "weshopify-public-ig"
  }

  vpc_id = aws_vpc.Weshopify-vpc.id
}


resource "aws_eip" "weshopify-eip" {
  tags = {
    "Name" = "weshopify-eip"
  }
  vpc = true
}


resource "aws_nat_gateway" "weshopify-public-nat" {
  tags = {
    "Name" = "weshopify-public-nat"
  }
  allocation_id = aws_eip.weshopify-eip.id
  subnet_id = aws_subnet.weshopify-subnet-public-1a.id  
}