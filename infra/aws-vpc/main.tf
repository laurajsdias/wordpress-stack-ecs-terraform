terraform {
    required_version = "> 0.15.0"
    backend "s3" {
      bucket  = "ecs-wordpress-terraform-states"
      key     = "dev/ecs-wordpress-tf-remote/aws-vpc.tf"
      region  = "us-east-1"
      encrypt = true
    }
}

module "aws_vpc" {
    source              = "../../modules/aws-vpc"
    region              = "us-east-1"
    availability_zone   = "us-east-1a"
    tags                = {
        environment = "dev"
        project     = "ecs-wordpress"
        terraform   = true
    }

}

output "vpc_id" {
  value = module.aws_vpc.vpc_id
}

output "availability_zone" {
  value = module.aws_vpc.availability_zone
}

output "subnet_id" {
  value = module.aws_vpc.subnet_id
}

output "sg_id" {
  value = module.aws_vpc.sg_id
}