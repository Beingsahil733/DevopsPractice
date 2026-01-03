resource "aws_subnet" "sub-1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_cidrs[0]
  availability_zone = var.subnet_azs[0]
  tags = {
    Name = var.subnet_names[0]
  }

}
resource "aws_subnet" "sub-2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_cidrs[1]
  availability_zone = var.subnet_azs[1]
  tags = {
    Name = var.subnet_names[1]
  }

}
resource "aws_subnet" "sub-3" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_cidrs[2]
  availability_zone = var.subnet_azs[2]
  tags = {
    Name = var.subnet_names[2]
  }

}