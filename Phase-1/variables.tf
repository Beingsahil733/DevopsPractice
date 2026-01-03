variable "aws_region" {
  type        = string
  default     = "ap-south-1"
  description = "variable for provider"

}
variable "aws_vpc" {
  type = object({
    cidr_block = string
    Name       = string
  })
  description = "variable for vpc"

}

variable "aws_internetgateway" {
  type = object({
    Name = string
  })

  default = {
    Name = "myigw"
  }
  description = "variable for igw"

}
variable "aws_subnet_app" {
  type = object({
    cidr_block        = string
    availability_zone = string
    Name              = string
  })
  default = {
    availability_zone = "ap-south-1a"
    cidr_block        = "10.0.1.0/24"
    Name              = "App"
  }
  description = "variable for pub-subnet"

}
variable "aws_subnet_app_pub" {
  type = object({
    cidr_block        = string
    availability_zone = string
    Name              = string
  })
  default = {
    availability_zone = "ap-south-1a"
    cidr_block        = "10.0.4.0/24"
    Name              = "App-Public"
  }
  description = "variable for public-subnet"

}
variable "aws_subnet_db" {
  type = object({
    cidr_block        = string
    availability_zone = string
    Name              = string
  })
  default = {
    availability_zone = "ap-south-1a"
    cidr_block        = "10.0.2.0/24"
    Name              = "DB"
  }
  description = "variable for pri-subnet"

}
