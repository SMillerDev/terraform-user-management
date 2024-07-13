locals {
  teams = [
    "bots",
    "maintainers",
    "members",
  ]
  maintainer_teams = [
    "brew",
    "bundle",
    "cask",
    "core",
    "formulae-brew-sh",
    "ops",
    "plc",
    "tsc",
  ]
}

data "github_team" "other_teams" {
  for_each = toset(concat(local.teams, local.maintainer_teams))
  slug     = each.key
}
