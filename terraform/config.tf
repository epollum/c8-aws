terraform {
  backend "s3" {
    bucket = "emma-tf-state"
    key    = "state"
    region = "eu-central-1"
}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.22.0"
    }
  }
}

provider "aws" {
  region     = "eu-central-1"
}