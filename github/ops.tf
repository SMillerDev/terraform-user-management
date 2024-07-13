data "github_team" "ops" {
  slug = "ops"
}

resource "github_team_membership" "ops_membership" {
  for_each = toset(var.teams.maintainers.ops)
  team_id  = data.github_team.ops.id
  username = each.key
  role     = contains(var.admins, each.key) ? "maintainer" : "member"
}