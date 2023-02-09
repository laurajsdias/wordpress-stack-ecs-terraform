terraform {
  required_version = ">= 1.3.5"
  backend "s3" {
	  bucket  = "ecs-wordpress-terraform-states"
    key     = "dev/ecs-wordpress-tf-remote/aws-ecs.tf"
    region  = "us-east-1"
    encrypt = true
  }
}

module "aws_ecs" {
  source = "../../modules/aws-ecs"
  region = "us-east-1"
  tags   = {
    environment = "dev"
    project     = "ecs-wordpress"
    terraform   = true
  }
}

output "ecs_cluster_id" {
  value = module.aws_ecs.cluster_id
}

output "ecs_cloudwatch_group_name" {
  value = module.aws_ecs.cloudwatch_group_name
}