variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default = ""
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = ""
}

variable "instance_name" {
  description = "The name of the EC2 instance"
  type        = string
  default     = "MyInstance"
}

# variable "security_group" {
#   description = "Security group to associate with the instance"
#   type        = string
#   default = ""
# }
# variable "subnet_id" {
#     description = "Subnet ID to associate with the instance"
    
  
# }

variable "key_name" {
  description = "The key pair name for SSH access"
  type        = string
  default = ""
}
# variable "tag" {
#   description = "tag to associate with the instance"
#   type        = string
#   default = ""
# }
