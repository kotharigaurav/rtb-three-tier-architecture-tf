variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_1" {
  type        = string
  description = "CIDR block for the public subnet 1"
}

variable "public_subnet_cidr_2" {
  type        = string
  description = "CIDR block for the public subnet 2"
}

variable "az1" {
  type        = string
  description = "Availability zone 1"
}

variable "az2" {
  type        = string
  description = "Availability zone 2"
}

variable "private_subnet_cidr_1" {
  type        = string
  description = "CIDR block for the private subnet 1"
}

variable "private_subnet_cidr_2" {
  type        = string
  description = "CIDR block for the private subnet 2"

}