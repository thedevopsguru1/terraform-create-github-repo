# Configure the AWS Provider
provider "aws" {
  # Configuration options
  region = "us-east-2"
}

provider "github" {
  # Configuration options
  token = "ghp_L3qmfjS"
}
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.31.0"
    }
  }
}
