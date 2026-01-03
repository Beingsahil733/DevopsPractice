resource "aws_subnet" "subnets_info" {
  count             = length(var.subnets_info)
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnets_info[count.index].cidr_block
  availability_zone = var.subnets_info[count.index].availability_zone
  tags = {
    Name = var.subnets_info[count.index].Name
  }

}
