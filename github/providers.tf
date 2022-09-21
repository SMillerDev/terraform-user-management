terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.1"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  owner = "Homebrew"
}