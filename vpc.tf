resource "aws_vpc" "tekup_test_vpc" {
  cidr_block = var.vpc_IPAddress

  tags = {
    Name = "tekup-test-vpc"
  }
}
