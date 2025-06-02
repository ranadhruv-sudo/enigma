terraform {
  backend "s3" {
    bucket         = "nxminds-bucket"
    # key            = "ec2-project/terraform.tfstate"
    region         = "eu-north-1"
    # dynamodb_table = "terraform-locks"
  }
}