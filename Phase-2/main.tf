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