provider "aws" "sqs" {
  region     = "us-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}


resource "aws_sqs_queue" "darren_terraform_queue" {
  name                      = "darren_terraform-example-queue"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Environment = "production"
  }
}
