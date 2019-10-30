module "sqs" {
  source = "./sqs"
}

module "vpc_test" {
  source = "./vpc_test"
availability_zones = ["us-west-2a","us-west-2b"]
aws_region = "us-west-2"
}
