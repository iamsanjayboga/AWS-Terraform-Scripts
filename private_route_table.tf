resource "aws_route_table" "weshopify-private-route-table" {
  tags = {
    "Name" = "weshopify-private-route-table"
  }
  vpc_id = aws_vpc.Weshopify-vpc.id
}

resource "aws_route_table_association" "weshopify-private-1a-rt-association" {
  route_table_id = aws_route_table.weshopify-private-route-table.id
  subnet_id = aws_subnet.weshopify-subnet-private-1a.id
}

resource "aws_route_table_association" "weshopify-private-1b-rt-association" {
  route_table_id = aws_route_table.weshopify-private-route-table.id
  subnet_id = aws_subnet.weshopify-subnet-private-1b.id
}

resource "aws_route" "weshopify-nat-gateway-attachment" {
  route_table_id = aws_route_table.weshopify-private-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_nat_gateway.weshopify-public-nat.id
}