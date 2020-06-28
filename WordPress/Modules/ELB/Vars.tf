
variable "VPC_Id" {
 
  default = "vpc-eaf31297"
}

variable "Public_Subnets" {
  type = "list"
  default = ["subnet-aedb0ec8", "subnet-a89b4889"]
}

variable "Private_Subnets" {
  type = "list"
  default = ["subnet-befd98f3", "subnet-aedb0ec8"]
}

variable "EC2_SG" {
  type = "list"
  default = ["sg-0580f230ab5b4979f", "sg-3bf2e81f"]
}

variable "ALB_SG" {
  type = "list"
  default = ["sg-0bb9c6878a002d20f", "sg-3bf2e81f"]
}

variable "Key_Name" {
  default = "WordPress_Key"
}