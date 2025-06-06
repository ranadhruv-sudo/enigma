resource "aws_instance" "web" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  availability_zone           = "us-east-1a"
  vpc_security_group_ids      = var.security_group_ids
  associate_public_ip_address = true
  key_name                    = "my-mac-key-3"


  metadata_options {
    http_tokens = "required"
  }

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 8
    encrypted             = true
    delete_on_termination = true
  }

  tags = {
    Name = "TerraformWebServer"
  }
}