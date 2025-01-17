provider "aws" {
  
}

resource "aws_instance" "team" {
    ami = var.ami
    instance_type = var.instance_type
    count = length(var.name)

    tags = {
      Name = "each.value"
    }
  
}