variable "vpc_id" {
  description = "VPC ID"
  type = string
  default = ""
}

variable "prefix" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "retention_in_days" {
  type = number
  default = 7
}

variable "subnet_ids" {
  type = list(string)
  default = []
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