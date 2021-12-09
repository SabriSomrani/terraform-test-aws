resource "aws_internet_gateway" "tekup_test_IGW" {
  vpc_id = aws_vpc.tekup_test_vpc.id

  tags = {
    Name = "tekup-test-IGW"
  }
}
