output "instance-id" {
  value = module.ec2module.instance-id
}

output "ALB_DNSName" {
  value = module.albmodule.ALB_DNSName
}

output "RDS_EndPoint" {
  value = module.rdsmodule.RDS_Endpoint
}