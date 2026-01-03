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
variable "subnet_cidrs" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "variables for cidrs"

}
variable "subnet_azs" {
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1a", "ap-south-1a"]
  description = "variables for azs"


}
variable "subnet_names" {
  type        = list(string)
  default     = ["sub-1", "sub2", "sub-3"]
  description = "variables for names"

}
