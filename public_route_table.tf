resource "aws_route_table" "weshopify-public-route-table" {
  tags = {
    "Name" = "weshopify-public-route-table"
  }
  vpc_id = aws_vpc.Weshopify-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.weshopify-public-ig.id
  }
}

resource "aws_main_route_table_association" "weshopify-main-rt-association" {
  route_table_id = aws_route_table.weshopify-public-route-table.id
  vpc_id = aws_vpc.Weshopify-vpc.id
}


resource "aws_route_table_association" "weshopify-public-1a-rt-association" {
  route_table_id = aws_route_table.weshopify-public-route-table.id
  subnet_id = aws_subnet.weshopify-subnet-public-1a.id
}


resource "aws_route_table_association" "weshopify-public-1b-rt-association" {
  route_table_id = aws_route_table.weshopify-public-route-table.id
  subnet_id = aws_subnet.weshopify-subnet-public-1b.id
}