variable "access_key" {}
variable "secret_key" {}

terraform {
  backend "remote" {
    organization = "cloudbutton"

    workspaces {
      name = "cloudbutton"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}



module "aws" {
source = "./aws"
access_key = var.access_key
secret_key = var.secret_key
}

//module "sqs" {
//source = "./modules/sqs"
//}

module "vpc_test" {
source = "./modules/vpc_test"
availability_zones = ["us-west-2a","us-west-2b"]
aws_region = "us-west-2"
}
