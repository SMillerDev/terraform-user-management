data "github_team" "main_teams" {
  for_each = toset([for team in keys(var.teams) : team if contains(["bots", "taps"], team) == false])
  slug     = each.key
}