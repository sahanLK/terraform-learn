terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}


resource "aws_instance" "app_server" {
  count         = 2
  ami           = "ami-075686beab831bb7f"  
  instance_type = "t2.micro"
  key_name      = "aws-key"

  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}
