terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }

  backend "s3" {
    bucket = "Bucket_name"
    key    = "Folder inside the bucket"
    region = "ap-south-2"

  }
}

provider "aws" {
  region = "ap-south-2"
}
