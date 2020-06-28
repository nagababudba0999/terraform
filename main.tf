terraform {
	backend "s3" {
		bucket = "terraform-worpress-poc"
		key    = "terraform/tfstate_1.tfstate"
		region = "us-east-1"
    access_key = "AKIA5WDV3YYGSECPGNGU"
    secret_key = "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"
	}
}


module "ec2module"{
  source = "Modules/ec2"
}

module "albmodule"{
  source = "Modules/elb"
  instance-id = module.ec2module.instance-id
}

module "rdsmodule"{
  source = "Modules/rds"
}
