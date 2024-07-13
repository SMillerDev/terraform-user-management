import {
  for_each = toset(var.teams.plc)
  to       = module.github.github_team_membership.plc_membership[each.key]
  id       = "3120238:${each.key}"
}

import {
  for_each = toset(var.teams.maintainers.tsc)
  to       = module.github.github_team_membership.tsc_membership[each.key]
  id       = "3120240:${each.key}"
}

import {
  for_each = toset(var.teams.maintainers.ops)
  to       = module.github.github_team_membership.ops_membership[each.key]
  id       = "3769017:${each.key}"
}

locals {
  members = concat(
    var.teams.bots,
    var.teams.plc,
    var.teams.security,
    var.teams.security,
    var.teams.members,
    flatten(values(tomap(var.teams.maintainers))),
    flatten(values(tomap(var.teams.taps)))
  )
}

import {
  for_each = toset([for member in local.members : member if !contains(local.unmanagable_members, member)])
  to       = module.github.github_membership.general[each.key]
  id       = "Homebrew:${each.key}"
}