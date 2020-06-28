variable "master_user" {
  default = "nagababu"
}

variable "master_password" {
  default = "Password123"
}

variable "DB_SG" {
  type = "list"
  default = ["sg-06c12bedbcc6aaccd", "sg-3bf2e81f"]
}


variable "Public_Subnets" {
  type = "list"
  default = ["subnet-aedb0ec8", "subnet-a89b4889"]
}