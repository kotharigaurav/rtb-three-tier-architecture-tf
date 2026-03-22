variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC"
}

variable "alb_sg_id" {
  type        = string
  description = "ID of the security group for the ALB"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "IDs of the public subnets"
}

variable "instance_ids" {
  type        = list(string)
  description = "IDs of the EC2 instances"
}