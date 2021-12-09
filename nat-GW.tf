resource "aws_nat_gateway" "tekup_test_NatGW" {
  allocation_id = aws_eip.tekup_test_eip.id
  subnet_id     = aws_subnet.public_subnets[0].id

  tags = {
    Name = "tekup-test-NatGW"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.tekup_test_IGW]
}
