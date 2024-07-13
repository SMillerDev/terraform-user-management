resource "github_membership" "general" {
  for_each = toset(concat(var.teams.maintainers.ops, var.teams.plc, var.teams.maintainers.tsc))
  username = each.key
  role     = contains(var.admins, each.key) ? "admin" : "member"
}

data "github_user" "members" {
  for_each = github_membership.general
  username = each.key
}

output "member_emails" {
  value = { for key, value in data.github_user.members : key => value.email }
}

output "ops" {
  value = { for i in var.teams.maintainers.ops : i => data.github_user.members[i] }
}

output "tsc" {
  value = { for i in var.teams.maintainers.tsc : i => data.github_user.members[i] }
}

output "plc" {
  value = { for i in var.teams.plc : i => data.github_user.members[i] }
}