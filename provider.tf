terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"

}

terraform {
    backend "s3" {
    bucket = "sharaf-s3-backut"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}


