resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"  # Amazon Linux 2 (change as needed)
  instance_type = "t2.micro"

 vpc_security_group_ids = var.security_group_ids                


  tags = {
    Name = "TerraformWebServer"
  }
}