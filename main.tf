terraform {
  required_version = ">=0.13.1"
  required_providers {
    aws = ">=3.54.0"
    local = ">=2.1.0"
  }
  backend "s3" {
    bucket = "trantor-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "new-vpc" {
  source = "./aws/modules/vpc"
  prefix = var.prefix

  vpc_cidr_block = var.vpc_cidr_block
  rtb_cidr_block = var.rtb_cidr_block
  rtb_association_count = var.rtb_association_count
}

module "eks" {
    source = "./aws/modules/eks"
    prefix = var.prefix

    cluster_name = var.cluster_name
    retention_in_days = var.retention_in_days
    desired_size = var.desired_size
    max_size = var.max_size
    min_size = var.min_size
    node_ec2_type = var.node_ec2_type
    node_ec2_type2 = var.node_ec2_type2
    
    vpc_id = module.new-vpc.vpc_id
    subnet_ids = module.new-vpc.subnet_ids
}