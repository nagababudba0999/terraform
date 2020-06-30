resource "aws_instance" "web" {
  ami           = "ami-09d95fab7fff3776c"
  availability_zone = "us-east-1a"
  instance_type = "t2.micro"
  key_name = var.Key_Name
  subnet_id = var.Private_Subnets[0]
  security_groups = [var.EC2_SG[0], var.EC2_SG[1]]
  //user_data = file("./user_data.sh")

  tags = {
    Name = "WordPress_Web"
  }
}
