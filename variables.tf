
variable "vpc_IPAddress" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnets_IPAddr" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets_IPAddr" {
  type    = list(any)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}


variable "subnets_AZ" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnets_tags" {
  type    = list(any)
  default = ["public-subnet-A", "public-subnet-B"]
}

variable "private_subnets_tags" {
  type    = list(any)
  default = ["private-subnet-A", "private-subnet-B"]
}


