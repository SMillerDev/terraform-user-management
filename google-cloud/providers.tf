terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "coral-theme-308623"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}