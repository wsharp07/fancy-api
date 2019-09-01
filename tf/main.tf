variable "region" {}
variable "shared_credentials_file" {}
variable "profile" {}

provider "aws" {
  region = "${var.region}"
  profile = "${var.profile}"
  shared_credentials_file = "${var.shared_credentials_file}"
}

resource "aws_instance" "example" {
  ami = "ami-0b16d80945b1a9c7d" #Amazon Linux us-east-1
  instance_type = "t2.micro"
}