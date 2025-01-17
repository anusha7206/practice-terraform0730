provider "aws" {
  profile = "my_profile"
  region  = "us-east-1"
}

locals {
  region = "us-east-1"
  environment = "dev"
  instance_type = {dev="t2.micro", test = t2.nano}
  ami = "ami-0df8c184d5f6ae949"
  
}

resource "aws_instance" "example" {
    ami = local.ami
     instance_type = local.instance_type.dev

  tags = {
    Name        = "ExampleInstance"
    Environment = local.environment
  }
}