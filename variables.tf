variable "prefix" {
  type = string
  default = "trantor-si"
}

variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "rtb_cidr_block" {
  type = string
  default = "0.0.0.0/0"
}

variable "rtb_association_count" {
  type = number
  default = 2
}

variable "cluster_name" {
  type = string
  default = "terminus"
}

variable "retention_in_days" {
  type = number
  default = 7
}

variable "desired_size" {
  type = number
  default = 2
}
  
variable "max_size" {
  type = number
  default = 3
}

variable "min_size" {
  type = number
  default = 1
}

variable "node_ec2_type" {
  type = string
  default = "t2.micro"
}

variable "node_ec2_type2" {
  type = string
  default = "t3.micro"
}

variable "vpc_module_path" {
  type = string
  default = "./aws/modules/vpc"
}

variable "eks_module_path" {
  type = string
  default = "./aws/modules/eks"
}

variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "aws_provider" {
  type = string
  default = ">=3.54.0"
}

variable "local_provider" {
  type = string
  default = ">=2.1.0"
}

variable "s3_bucket" {
  type = string
  default = "myfcbucket"
}

variable "s3_key" {
  type = string
  default = "terraform.tfstate"
}