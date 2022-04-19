resource "github_membership" "general" {
  for_each = toset(concat(var.ops, var.plc, var.tsc))
  username = each.key
  role     = contains(concat(var.plc, var.tsc), each.key) ? "admin" : "member"
}

data "github_user" "members" {
  for_each = github_membership.general
  username = each.key
}

output "member_emails" {
  value = { for key, value in data.github_user.members : key => value.email }
}

output "ops" {
  value = { for i in var.ops : i => data.github_user.members[i] }
}

output "tsc" {
  value = { for i in var.tsc : i => data.github_user.members[i] }
}

output "plc" {
  value = { for i in var.plc : i => data.github_user.members[i] }
}