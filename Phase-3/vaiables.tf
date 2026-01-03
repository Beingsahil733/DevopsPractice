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
variable "subnets_info" {
  type = list(object({
    cidr_block = string
    availability_zone = string
    Name = string
  }))
description = "variables for subnets info"
  
}
