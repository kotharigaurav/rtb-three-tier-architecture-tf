locals {
  project_name = "rtb-three-tier-arch"

  vpc_cidr              = "10.0.0.0/16"
  public_subnet_cidr_1  = "10.0.1.0/24"
  public_subnet_cidr_2  = "10.0.2.0/24"
  private_subnet_cidr_1 = "10.0.3.0/24"
  private_subnet_cidr_2 = "10.0.4.0/24"
  az1                   = "us-east-1a"
  az2                   = "us-east-1b"
  public_subnet_cidr    = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr   = ["10.0.3.0/24", "10.0.4.0/24"]
  az                    = ["us-east-1a", "us-east-1b"]

  instance_type = "t2.micro"
  key_name      = "RTB-KeyPair"

  db_engine         = "mysql"
  db_instance_class = "db.t3.micro"
  db_name           = var.db_name
  db_username       = var.db_username
  db_password       = var.db_password
}