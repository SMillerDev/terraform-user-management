terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.23"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = var.token
  owner = "Homebrew"
}