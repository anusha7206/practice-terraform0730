provider "aws" {
  
}

resource "aws_instance" "dev" {
    ami = "ami-0d2614eafc1b0e4d2"
    instance_type = "t2.micro"
    key_name = "aws_key"
    count = 2
    tags = {
      Name="counttf"
    }
  
}