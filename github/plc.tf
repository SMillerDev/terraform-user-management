data "github_team" "plc" {
  slug = "plc"
}

resource "github_team_membership" "plc_membership" {
  for_each = toset(var.teams.plc)
  team_id  = data.github_team.plc.id
  username = each.key
  role     = contains(var.admins, each.key) ? "maintainer" : "member"
}