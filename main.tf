module "github" {
  source = "./github"
  plc    = local.plc
  tsc    = local.tsc
  ops    = local.ops
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