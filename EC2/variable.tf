variable "ami_id" {
  description = "The AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the instance"
  type        = string
  default     = "t2.micro" # Optional: Set a default value
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "state_file" {
  description = "The Terraform state file name"
  type        = string
}