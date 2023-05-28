# terraform {
#   backend "s3" {
#     bucket         = "narbyd-dev-terraform-bucket"
#     key            = "global/s3/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }

# terraform {
#   cloud {
#     organization = "Dybran"

#     workspaces {
#       name = "terraform-aws-cloud"
#     }
#   }
# }
