data "aws_subnet" "test" {
    id ="subnet-049d7b94c673f14b1"
  
}

data "aws_ami" "amzlinux" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}




# data "aws_subnet" "default" {
#   filter {
#     name   = "tag:Name"
#     values = ["my-sybnet"] # insert value here
#   }
# }


resource "aws_instance" "dev" {
   ami = data.aws_ami.amzlinux.id
   instance_type ="t2.micro"
   key_name = "aws_key"
#    subnet_id = data.aws_subnet.default.id
 
}