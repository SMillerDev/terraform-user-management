terraform {
  required_providers {
    googleworkspace = {
      source  = "hashicorp/googleworkspace"
      version = "~> 0.6"
    }
  }
}

provider "googleworkspace" {
  credentials = "some-project.json"
  customer_id = "A01b123xz"
}