
module "aws" {
  source = "./aws"
access_key = ${var.access_key}
secret_key = ${var.secret_key}
}
module "sqs" {
  source = "./sqs"
}

module "vpc_test" {
  source = "./vpc_test"
availability_zones = ["us-west-2a","us-west-2b"]
aws_region = "us-west-2"
}
