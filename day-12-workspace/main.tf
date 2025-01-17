provider "aws" {
  profile = "my_profile"
  region  = "us-east-1"
}

resource "aws_instance" "dev" {
    ami = "ami-0df8c184d5f6ae949"
    key_name = "aws_key"
    instance_type = "t2.micro"
    tags = {
      name ="test"
    }
  
}