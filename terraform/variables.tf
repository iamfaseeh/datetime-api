variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "The ID of the existing VPC."
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the existing public subnet within the VPC where the bastion should be launched."
  type        = string
}

variable "bastion_instance_type" {
  description = "The EC2 instance type for the bastion host."
  type        = string
  default     = "t3.micro"
}

variable "bastion_key_name" {
  description = "The name of the EC2 Key Pair to allow SSH access to the bastion."
  type        = string
}

variable "allowed_ssh_cidr_blocks" {
  description = "List of CIDR blocks allowed to SSH into the bastion host. Be restrictive!"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default = {
    Project     = "DateTimeAPI-Test"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}