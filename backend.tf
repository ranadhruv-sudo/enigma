terraform {
  backend "s3" {
    bucket = "nxminds-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "terraform-locks"

    /* 
        bucket  = "enbridge-tf-backend"
    key     = "terraform/state.tfstate"
    region  = "us-east-1"
    encrypt = true
    
     */
  }
}