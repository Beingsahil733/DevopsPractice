terraform {
  required_providers {
    aws = {
        source = "Hashicorp/aws"
        version = "5.82.2"
    }
  }
}
provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "Hello-TF"
    }
  
}