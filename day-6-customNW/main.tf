# Create VPC

resource "aws_vpc" "dev" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "test_server"
    }
  
}# Create subnets

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "public_subnet"
      
    }

}

# Create Internate Gateway and attach to VPC

resource "aws_internet_gateway" "dev" {
  vpc_id = aws_vpc.dev.id
  
}

# Create Route table and Edit routes

resource "aws_route_table" "dev" {
  vpc_id = aws_vpc.dev.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev.id
  }
}


# Subnet association to Route

resource "aws_route_table_association" "dev" {
    subnet_id = aws_subnet.public.id
     route_table_id=aws_route_table.dev.id
  
}

# Create SG group

resource "aws_security_group" "allow_tls" {
  name   = "allow_tls"
  vpc_id = aws_vpc.dev.id
  tags = {
    Name = "dev_sg"
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create Servers

resource "aws_instance" "dev" {
    ami = "ami-0fd05997b4dff7aac"
    instance_type = "t2.micro"
    key_name = "aws_key"
    subnet_id = aws_subnet.public.id
     vpc_security_group_ids = [aws_security_group.allow_tls.id]
     associate_public_ip_address = true
    tags = {
      Name = "dev-ec2"
    }
  
}