provider "aws" {
    region = "us-east-1"
  
}

# Another provider alias
provider "aws" {
    region = "ap-south-1"
    alias = "provider2"
  
}


resource "aws_s3_bucket" "test" {
    bucket = "multicloud123456s3bucketawsazure"
    provider = aws.provider2
  
}