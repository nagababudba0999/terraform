

output "RDS_Endpoint" {
  value = aws_db_instance.wordpress_sql.endpoint
}