# Not tested yet
# resource "google_cloud_identity_group" "ops" {
#   display_name = "ops"

#   parent = "customers/A01b123xz"

#   group_key {
#     id = "ops@brew.sh"
#   }

#   labels = {
#     "cloudidentity.googleapis.com/groups.discussion_forum" = ""
#   }
# }

# resource "google_cloud_identity_group_membership" "cloud_identity_group_membership_basic" {
#   group    = google_cloud_identity_group.ops.id

#   preferred_member_key {
#     id = "cloud_identity_user@example.com"
#   }

#   roles {
#     name = "MEMBER"
#   }

#   roles {
#     name = "MANAGER"
#   }
# }