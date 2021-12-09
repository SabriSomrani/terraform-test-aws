resource "aws_route_table_association" "pub_RT" {
  subnet_id      = aws_subnet.public_subnets[count.index].id
  route_table_id = aws_route_table.public_RT.id
  count          = 2
}


resource "aws_route_table_association" "prv_RT" {
  subnet_id      = aws_subnet.private_subnets[count.index].id
  route_table_id = aws_route_table.private_RT.id
  count          = 2
}

