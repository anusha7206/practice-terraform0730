variable "ami_id" {
    description = "inserting ami value to main.tf"
    type = string
    default = "ami-0fd05997b4dff7aac"
  
}

variable "type" {
    description = "inserting type value to main.tf"
    type = string
    default = "t2.nano"
  
}
variable "key_name" {
    description = "inserting key value to main.tf"
    type = string
    default = "aws_key"
  
}