resource "aws_route_table" "public_RT" {
  vpc_id = aws_vpc.tekup_test_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tekup_test_IGW.id
  }


  tags = {
    Name = "public-route-Table"
  }
}



resource "aws_route_table" "private_RT" {
  vpc_id = aws_vpc.tekup_test_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.tekup_test_NatGW.id
  }


  tags = {
    Name = "private-route-Table"
  }
}

