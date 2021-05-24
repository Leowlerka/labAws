provider "aws" {
  region     = "us-east-1"
    //profile = "default"
  access_key = ""
  secret_key = ""
}

variable "name" {
    description = "Name the instance on deploy"
}

resource "aws_instance" "default_jenkins" {
    ami = "ami-09e67e426f25ce0d7"
    instance_type = "t2.micro"
    key_name = "newpair"
    tags = {
        Name = "${var.name}"
    }
}


//Прописать в ansible hosts
//[webservers]
//ubuntu@ec2-54-160-233-225.compute-1.amazonaws.com ansible_ssh_private_key_file=~/.ssh/newpair.pem

//[jenkins]
//ubuntu@ec2-18-208-224-54.compute-1.amazonaws.com ansible_ssh_private_key_file=~/.ssh/newpair.pem