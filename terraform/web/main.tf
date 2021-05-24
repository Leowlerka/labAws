provider "aws" {
  region     = "us-east-1"
    //profile = "default"
  access_key = ""
  secret_key = ""
}

variable "name" {
    description = "Name the instance on deploy"
}

resource "aws_instance" "default_web" {
    ami = "ami-09e67e426f25ce0d7"
    instance_type = "t2.micro"
    key_name = "newpair"
    tags = {
        Name = "${var.name}"
    }
}