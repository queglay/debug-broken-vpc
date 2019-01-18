provider "aws" {
  #  if you haven't installed and configured the aws cli, you will need to provide your aws access key and secret key.
  #  access_key = "${var.aws_access_key}"
  #  secret_key = "${var.aws_secret_key}"
  region = "${var.region}"
}

module "vpc" {
  source = "./modules/vpc"

  #sleep will disable the nat gateway to save cost during idle time.
  sleep = "${var.sleep}"
}
