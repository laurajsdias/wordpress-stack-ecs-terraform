resource "aws_ecr_repository" "default" {
  name = "${var.tags["environment"]}-${var.tags["project"]}"
  tags   = {
    environment = "dev"
    project     = "ecs-wordpress"
    terraform   = true
  }
}