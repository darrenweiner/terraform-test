variable secret_key {}
variable access_key {}

module "aws" {
  source = "./aws"
access_key = TF_VAR_access_key
secret_key = TF_VAR_secret_key
}
module "sqs" {
  source = "./sqs"
}

module "vpc_test" {
  source = "./vpc_test"
availability_zones = ["us-west-2a","us-west-2b"]
aws_region = "us-west-2"
}
