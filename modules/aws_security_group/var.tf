variable "allow_cidr" {
  description = "CIDR block allowed for HTTP traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}