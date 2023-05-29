terraform {
  backend "s3" {
    bucket         = "narbyd-dev-terraform-bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "narbyd-terraform-locks"
    encrypt        = true
  }
}

