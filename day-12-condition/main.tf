variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-west-2"  # or "eu-west-1"
}



provider "aws" {
  region = "us-east-1"
  
   
 }

 resource "aws_s3_bucket" "dev" {
    bucket = "yeuhfjkifkrjhrtjkfkfkjrjgjf"
    
  
}