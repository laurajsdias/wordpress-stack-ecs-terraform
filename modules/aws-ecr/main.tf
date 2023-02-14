resource "aws_ecr_repository" "default" {
  name = local.name

  tags = merge({
	  name = local.name
  }, var.tags)
}
