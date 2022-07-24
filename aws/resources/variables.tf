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