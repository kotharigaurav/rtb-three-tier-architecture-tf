module "vpc" {
  source = "../modules/vpc"

  project_name          = local.project_name
  vpc_cidr              = local.vpc_cidr
  public_subnet_cidr_1  = local.public_subnet_cidr_1
  public_subnet_cidr_2  = local.public_subnet_cidr_2
  private_subnet_cidr_1 = local.private_subnet_cidr_1
  private_subnet_cidr_2 = local.private_subnet_cidr_2
  az1                   = local.az1
  az2                   = local.az2
  public_subnet_cidr    = local.public_subnet_cidr
  az                    = local.az
  private_subnet_cidr   = local.private_subnet_cidr
}

module "security" {
    source = "../modules/security-group"

    project_name = local.project_name
    vpc_id = module.vpc.vpc_id
}

module "ec2" {
    source = "../modules/ec2"

    project_name = local.project_name
    instance_type = local.instance_type
    public_subnet_id_1 = module.vpc.public_subnet_ids[0]
    public_subnet_id_2 = module.vpc.public_subnet_ids[1]
    security_group_id = module.security.ec2_sg_id
    key_name = local.key_name
}

module "alb" {
    source = "../modules/alb"

    project_name = local.project_name
    vpc_id = module.vpc.vpc_id
    alb_sg_id = module.security.alb_sg_id
    public_subnet_ids = module.vpc.public_subnet_ids
    instance_ids = module.ec2.instance_ids
}

module "rds" {
    source = "../modules/rds"

    project_name = local.project_name
    private_subnet_ids = module.vpc.private_subnet_ids
    db_engine = local.db_engine
    db_instance_class = local.db_instance_class
    db_name = local.db_name
    db_username = local.db_username
    db_password = local.db_password
    rds_sg_id = module.security.rds_sg_id
}