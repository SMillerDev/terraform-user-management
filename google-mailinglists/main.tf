# Awaiting credentials
# data "googleworkspace_group" "ops" {
#   email = "ops@brew.sh"
# }

# data "googleworkspace_user" "ops_member" {
#   for_each      = var.ops
#   primary_email = each.value.email
# }

# resource "googleworkspace_group_member" "ops" {
#   for_each = var.ops
#   group_id = googleworkspace_group.ops.id
#   email    = each.value.email

#   role = contains(keys(merge(var.plc, var.tsc)), each.key) ? "MANAGER" : "MEMBER"
# }