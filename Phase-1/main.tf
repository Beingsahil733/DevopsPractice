terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.0.0"
}
provider "aws" {
  region = var.aws_region
}
resource "aws_vpc" "my_vpc" {
  cidr_block = var.aws_vpc.cidr_block
  tags = {
    Name = var.aws_vpc.Name
  }

}
resource "aws_internet_gateway" "myinternetgateway" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = var.aws_internetgateway.Name
  }

}
resource "aws_subnet" "app" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.aws_subnet_app.cidr_block
  availability_zone = var.aws_subnet_app.availability_zone
  tags = {
    Name = var.aws_subnet_app.Name
  }
}
resource "aws_subnet" "app-pub" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.aws_subnet_app_pub.cidr_block
  availability_zone = var.aws_subnet_app_pub.availability_zone
  tags = {
    Name = var.aws_subnet_app_pub.Name
  }
}
resource "aws_subnet" "db" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.aws_subnet_db.cidr_block
  availability_zone = var.aws_subnet_db.availability_zone
  tags = {
    Name = var.aws_subnet_db.Name
  }
}
resource "aws_route_table" "app-pb" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "App-Public-Browser"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myinternetgateway.id
  }
}
resource "aws_route_table" "database" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "Database"
  }
}
resource "aws_route_table_association" "PublicBrowser" {
  subnet_id      = aws_subnet.app-pub.id
  route_table_id = aws_route_table.app-pb.id

}
resource "aws_route_table_association" "App-Public" {
  subnet_id      = aws_subnet.app.id
  route_table_id = aws_route_table.app-pb.id

}
resource "aws_route_table_association" "Database" {
  subnet_id      = aws_subnet.db.id
  route_table_id = aws_route_table.database.id

}
resource "aws_route" "app-Public" {
  route_table_id         = aws_route_table.app-pb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.myinternetgateway.id
}
