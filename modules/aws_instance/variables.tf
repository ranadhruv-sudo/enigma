variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs to attach to the EC2 instance"
}