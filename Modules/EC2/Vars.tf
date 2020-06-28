
variable "VPC_Id" {
  default = "vpc-eaf31297"
}

variable "Public_Subnets" {
  type = "list"
  default = ["subnet-aedb0ec8", "subnet-a89b4889"]
}

variable "Private_Subnets" {
  type = "list"
  default = ["subnet-aedb0ec8", "subnet-a89b4889"]
}

variable "EC2_SG" {
  type = "list"
  default = ["sg-0580f230ab5b4979f", "sg-3bf2e81f"]
}

variable "Key_Name" {
  default = "Wordpress"
}