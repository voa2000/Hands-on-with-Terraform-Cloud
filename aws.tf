provider "aws" {
  region  = "eu-west-1"
}

terraform {
  required_version = ">= 0.15.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.37.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.7.1"
    }
  }
}
