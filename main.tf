provider "aws" {
  region = "us-east-1"
}

module "aws_instance_module" {
  source             = "./modules/aws_instance"
  security_group_ids = [module.aws_security_group_module.web_sg_id]


}

module "aws_security_group_module" {
  source = "./modules/aws_security_group"
  # allow_cidr = "0.0.0.0/0"

}