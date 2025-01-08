provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }

  # Optional: Specify a security group for the instance
#   security_groups = [var.security_group]

  # Optional: Associate an EIP (Elastic IP) if needed
  associate_public_ip_address = true

  # Optional: Configure key pair for SSH access
  key_name = var.key_name
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

output "instance_id" {
  value = aws_instance.example.id
}
