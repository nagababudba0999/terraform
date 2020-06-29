terraform {
	backend "s3" {
		bucket = "terraform-worpress-poc"
		key    = "terraform/tfstate_1.tfstate"
		region = "us-east-1"
    access_key = ""
    secret_key = ""
	}
}


module "ec2module"{
  source = "./Modules/ec2"
}

module "albmodule"{
  source = "./Modules/elb"
  instance-id = module.ec2module.instance-id
}

module "rdsmodule"{
  source = "./Modules/rds"
}
