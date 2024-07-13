module "github" {
  source = "./github"
  plc    = var.teams.plc
  tsc    = var.teams.maintainers.tsc
  ops    = var.teams.maintainers.ops
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