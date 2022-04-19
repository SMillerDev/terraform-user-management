locals {
  teams = [
    "aliases",
    "autoupdate",
    "bots",
    "bundle",
    "command-not-found",
    "maintainers",
    "members",
    "ruby-macho"
  ]
  maintainer_teams = [
    "brew",
    "cask",
    "core",
    "formulae-brew-sh",
    "linux",
    "ops",
    "plc",
    "tsc"
  ]
}

data "github_team" "other_teams" {
  for_each = toset(concat(local.teams, local.maintainer_teams))
  slug     = each.key
}