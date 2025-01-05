terraform {
  backend "s3" {
    bucket = "multiclouds3terraform"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
