variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "List of private subnet IDs for the RDS instance"
}

variable "db_engine" {
  type        = string
  description = "Database engine for the RDS instance"
}

variable "db_instance_class" {
  type        = string
  description = "Instance class for the RDS instance"
}

variable "db_name" {
  type        = string
  description = "Name of the database"
}

variable "db_username" {
  type        = string
  description = "Username for the database"
}

variable "db_password" {
  type        = string
  description = "Password for the database"
}

variable "rds_sg_id" {
  type        = string
  description = "ID of the security group for the RDS instance"
}