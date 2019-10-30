variable "secret_key" {}
variable "access_key" {}


module "aws" {
  source = "./aws"
access_key = var.access_key
secret_key = var.secret_key
}

