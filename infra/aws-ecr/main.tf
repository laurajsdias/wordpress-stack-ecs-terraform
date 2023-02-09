terraform {
  required_version = "> 0.15.0"
  backend "s3" {
	  bucket  = "ecs-wordpress-terraform-states"
    key     = "dev/ecs-wordpress-tf-remote/aws-ecr.tf"
    region  = "us-east-1"
    encrypt = true
  }
}

module "aws-ecr" {
  source = "../../modules/aws-ecr"
  region = "us-east-1"
}

output "arn" {
  value = module.aws-ecr.arn
}

output "repository_url" {
  value = module.aws-ecr.repository_url
}