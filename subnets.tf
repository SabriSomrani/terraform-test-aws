

resource "aws_subnet" "public_subnets" {
  vpc_id                  = aws_vpc.tekup_test_vpc.id
  cidr_block              = var.public_subnets_IPAddr[count.index]
  availability_zone       = var.subnets_AZ[count.index]
  count                   = 2
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnets_tags[count.index]
  }
}

resource "aws_subnet" "private_subnets" {
  vpc_id                  = aws_vpc.tekup_test_vpc.id
  cidr_block              = var.private_subnets_IPAddr[count.index]
  availability_zone       = var.subnets_AZ[count.index]
  count                   = 2
  map_public_ip_on_launch = true

  tags = {
    Name = var.private_subnets_tags[count.index]
  }
}

