locals {
  plc = ["SMillerDev", "MikeMcQuaid", "jonchang", "issyl0", "mistydemeo"]
  tsc = ["MikeMcQuaid", "Bo98", "fxcoudert", "iMichka", "Rylan12"]
  ops = ["jonchang", "Bo98", "fxcoudert", "Rylan12", "dawidd6", "carlocab", "reitermarkus", "nandahkrishna"]
}

module "github" {
  source = "./github"
  token  = var.github_token
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