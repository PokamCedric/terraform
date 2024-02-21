# Terraform configuration
terraform {
  required_version = ">= 1.0"

  # Add Providers
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.20"
    }
  }

  # Store the terraform state file in s3
  backend "s3" {
    bucket = "terraform-state-for-terraform-user"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = var.region
  profile = var.profile
}

# Get all available AZ's in VPC for master region
data "aws_availability_zones" "azs" {
  state = "available"
}
