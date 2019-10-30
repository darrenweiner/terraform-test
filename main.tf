module "sqs" {
  source = "./sqs"
}

module "vpc_test" {
  source = "./vpc_test"
availability_zones = ["us-east-1","us-west-2"]
}
