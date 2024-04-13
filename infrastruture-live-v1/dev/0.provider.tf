provider "aws" {
  region = "us-east-1"
  profile = "cloud_user"
}

terraform {
  required_version = ">= 1.0"

  backend "local" {
    path = "dev/vpc/terraform.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.62"
    }
  }
}

# profile cloud_user should be created already created under .aws\crenditals for authentication.
# there are other way as well for the authentication like assume_role