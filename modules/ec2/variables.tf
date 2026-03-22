variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
}

variable "public_subnet_id_1" {
  description = "The ID of the first public subnet"
  type        = string
}

variable "public_subnet_id_2" {
  description = "The ID of the second public subnet"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group"
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}