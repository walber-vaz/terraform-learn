terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "terraform-tfstate-w2k"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

# alias multiple providers
# provider "aws" {
#   region = "us-west-2"
#   alias  = "primary_west"
# }

provider "aws" {
  region = "us-east-1"
}
