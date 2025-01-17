provider "aws" {
  region = "us-east-1"
}

# Variables
variable "bucket_name" {
    description = "Name of the s3 bucket"
    type = string
    default = "nareshitterraformpractice"

  
}

variable "tags" {
    description = "Tags to assiogn to the bucket"
    type = map(string)
    default = {
    Environment = "Dev"
    Owner = "Team"
    }
  
}

locals {
    bucket_name = "${var.bucket_name}-12345"
    acl         =  "private"
  
}
  
resource "aws_s3_bucket" "example" {
    bucket = local.bucket_name
    # acl    = local.acl

    tags = var.tags
  
}
output "bucket_name" {
value = aws_s3_bucket.example.bucket
description = "Name of the created s3 bucket"
  
}

output "bucket_arn" {
    value = aws_s3_bucket.example.arn
    description = "ARN of the created s3 bucket"
  
}
  
 
