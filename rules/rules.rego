package rules

import data.dataset.permissions_array
import data.dataset.permissions_map
import future.keywords.in

default allow = false

allow {
  some permission in permissions_array
  permission.action == input.action
  permission.resource == input.resource
  permission.required_privilege <= input.user_privilege
}