terraform {
  backend "s3" {
    bucket = "homebrew-terraform-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

module "github" {
  source = "./github"
  teams  = var.teams
  admins = var.github_admins
}

module "google-cloud" {
  source = "./google-cloud"
  ops    = module.github.ops
  tsc    = module.github.tsc
  plc    = module.github.plc
}

module "google-mailinglists" {
  source = "./google-mailinglists"
  ops    = module.github.ops
  tsc    = module.github.tsc
  plc    = module.github.plc
}
