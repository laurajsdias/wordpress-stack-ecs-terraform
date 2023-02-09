# Deploy Wordpress using AWS ECS on Fargate

This project presents Terraform code to deploy all the resources necessary for Wordpress to run on ECS on Fargate.
Resources created:
- VPC and its subnets
- RDS Database (MySQL)
- ECR Repository to host Wordpress Docker image
- ECS Cluster
- Wordpress task on ECS
- Cloudwatch group for observability


## Configuration

### Pre-requisites:

- Create two secrets on the Github Repository (AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY). The AWS_ACCESS_KEY_ID used must have permission to deploy all the resources, from S3 to ECS.
- Settings > Secrets and Variables > Actions > New repository secret

### Running via Github Actions:

- Push changes to main branch  
OR  
- Run the workflow manually (Actions menu > Click on Workflow on the right side panel > Run workflow > Choose branch main > Run workflow)

### Running locally:

### Step 1. Run VPC Terraform code

- `cd environments/dev/aws-vpc`
- `terraform init`
- `terraform apply`

### Step 2. Run RDS Terraform code

- `cd environments/dev/aws-rds`
- `terraform init`
- `terraform apply`

### Step 3. Run ECS Terraform code

- `cd environments/dev/aws-ecs`
- `terraform init`
- `terraform apply`

### Step 4. Run ECR Terraform code

- `cd environments/dev/aws-ecr`
- `terraform init`
- `terraform apply`

### Step 5. Run EC-Wordpress Terraform code

- `cd environments/dev/aws-ecs-wordpress`
- `terraform init`
- `terraform apply`







