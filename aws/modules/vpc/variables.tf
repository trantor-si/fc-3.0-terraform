variable "prefix" {
  type = string
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
