resource "aws_db_subnet_group" "wordpress_subnetgroup" {
  name       = "wordpress_subnetgroup"
  subnet_ids = [var.Public_Subnets[0], var.Public_Subnets[1]]

  tags = {
    Name = "wordpress_subnetgroup"
  }
}


resource "aws_db_instance" "wordpress_sql"{

  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7" 
  instance_class       = "db.t2.micro"
  identifier           = "wordpress-mysql-instance"
  vpc_security_group_ids = [var.DB_SG[0]]
  db_subnet_group_name = aws_db_subnet_group.wordpress_subnetgroup.name
  name                 = "wordpress_db"
  username             = var.master_user
  password             = var.master_password
  parameter_group_name = "default.mysql5.7"
  apply_immediately         = true
  final_snapshot_identifier = "final-backup"
  skip_final_snapshot       = false

}