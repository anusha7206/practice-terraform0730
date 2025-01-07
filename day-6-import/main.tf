resource "aws_instance" "name" {
    ami = "ami-0aa117785d1c1bfe5"
    instance_type = "t2.nano"
    key_name = "calikey"
    tags = {
      name = "dev"
    }
  
}
  

