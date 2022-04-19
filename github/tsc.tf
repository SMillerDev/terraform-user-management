data "github_team" "tsc" {
  slug = "tsc"
}

resource "github_team_membership" "tsc_membership" {
  for_each = toset(var.tsc)
  team_id  = data.github_team.tsc.id
  username = each.key
  role     = "maintainer"
}