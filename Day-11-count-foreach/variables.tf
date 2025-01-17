variable "ami" {
    type = string
    default = "ami-0d2614eafc1b0e4d2"


  
}

variable "instance_type" {
    type = string
    default = "t2.micro"

  
}

variable "Name" {
    type = list(string)
    default = [ "dev", "prod","test" ]

  
}

resource "aws_instance" "teams" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = length(var.Name)

  tags = {
    Name = var.Name [count.index]
  }
}