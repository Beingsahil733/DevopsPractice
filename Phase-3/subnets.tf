resource "aws_subnet" "sub-1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnets_info[0].cidr_block
  availability_zone = var.subnets_info[0].availability_zone
  tags = {
    Name = var.subnets_info[0].Name
  }

}
resource "aws_subnet" "sub-2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnets_info[1].cidr_block
  availability_zone = var.subnets_info[1].availability_zone
  tags = {
    Name = var.subnets_info[1].Name
  }

}
resource "aws_subnet" "sub-3" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnets_info[2].cidr_block
  availability_zone = var.subnets_info[2].availability_zone
  tags = {
    Name = var.subnets_info[2].Name
  }

}