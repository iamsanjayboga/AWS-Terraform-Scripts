resource "aws_vpc" "Weshopify-vpc" {
  tags = {
    "Name" = "Weshopify-vpc"
  }
  cidr_block = "30.0.0.0/16"
}

resource "aws_subnet" "weshopify-subnet-public-1a" {
  tags = {
    "Name" = "weshopify-subnet-public-1a"
  }
  cidr_block = "30.0.10.0/24"
  vpc_id = aws_vpc.Weshopify-vpc.id
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "weshopify-subnet-private-1a" {
  tags = {
    "Name" = "weshopify-subnet-private-1a"
  }
  cidr_block = "30.0.20.0/24"
  vpc_id = aws_vpc.Weshopify-vpc.id
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "weshopify-subnet-public-1b" {
  tags = {
    "Name" = "weshopify-subnet-public-1b"
  }
  cidr_block = "30.0.30.0/24"
  vpc_id = aws_vpc.Weshopify-vpc.id
  availability_zone = "us-east-1b"
}

resource "aws_subnet" "weshopify-subnet-private-1b" {
  tags = {
    "Name" = "weshopify-subnet-private-1b"
  }
  cidr_block = "30.0.40.0/24"
  vpc_id = aws_vpc.Weshopify-vpc.id
  availability_zone = "us-east-1b"
}
