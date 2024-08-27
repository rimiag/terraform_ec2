# Define user-defined variables
variable "region" {
  description = "AWS region to deploy the instance"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.large"
}

variable "ami_id" {
  description = "AMI ID for the instance"
  default     = "ami-0a0e5d9c7acc336f1"  # Example for Ubuntu
}

variable "key_name" {
  description = "Key pair name for SSH access"
}
