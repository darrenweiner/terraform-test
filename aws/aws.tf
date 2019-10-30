variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}
provider "aws" {
  region     = "us-east-1"
  access_key = access_key
  secret_key = secret_key
}
