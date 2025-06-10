variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs to attach to the EC2 instance"
}

variable "key_name" {
  type        = string
  description = "Name of the key pair to use for SSH access to the instance"
  default     = "my-mac-key-3"
}

variable "instance_type" {
  type        = string
  description = "Type of the EC2 instance (e.g., t3.micro)"
  default     = "t3.micro"
}
variable "availability_zone" {
  type        = string
  description = "Availability zone in which to launch the EC2 instance"
  default     = "us-east-1a"
}