provider "aws" {
  region  = "us-east-1"
#   profile = "practice-terraform"
}

resource "aws_instance" "dev" {
  ami           = "ami-0df8c184d5f6ae949"
  instance_type = "t2.micro"
  key_name      = "aws_key"

  tags = {
    Name = "test"
  }
}
