data "github_team" "tsc" {
  slug = "tsc"
}

resource "github_team_membership" "tsc_membership" {
  for_each = toset(var.teams.maintainers.tsc)
  team_id  = data.github_team.tsc.id
  username = each.key
  role     = contains(var.admins, each.key) ? "maintainer" : "member"
}