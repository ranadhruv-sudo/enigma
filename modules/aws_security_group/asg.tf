resource "aws_security_group" "web_sg" {
  name_prefix = "web-sg-"

  description = "Security group for web traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.allow_cidr
    description = "Allow HTTP traffic from the internet"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }
}