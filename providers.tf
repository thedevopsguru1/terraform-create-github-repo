# Configure the AWS Provider
provider "aws" {
  # Configuration options
  region = "us-east-2"
}

provider "github" {
  # Configuration options
  token = "ghp_L3qmfjUB680QS6Y6kAS"
}
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.31.0"
    }
  }
}
