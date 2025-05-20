terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }

  backend "s3" {
    bucket = "todaynow20052025"
    key    = "terraform.tfstate"
    region = "ap-south-2"

  }
}

provider "aws" {
  region = "ap-south-2"
}