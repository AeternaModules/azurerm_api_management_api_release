output "api_management_api_releases_id" {
  description = "Map of id values across all api_management_api_releases, keyed the same as var.api_management_api_releases"
  value       = { for k, v in azurerm_api_management_api_release.api_management_api_releases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_api_releases_api_id" {
  description = "Map of api_id values across all api_management_api_releases, keyed the same as var.api_management_api_releases"
  value       = { for k, v in azurerm_api_management_api_release.api_management_api_releases : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "api_management_api_releases_name" {
  description = "Map of name values across all api_management_api_releases, keyed the same as var.api_management_api_releases"
  value       = { for k, v in azurerm_api_management_api_release.api_management_api_releases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "api_management_api_releases_notes" {
  description = "Map of notes values across all api_management_api_releases, keyed the same as var.api_management_api_releases"
  value       = { for k, v in azurerm_api_management_api_release.api_management_api_releases : k => v.notes if v.notes != null && length(v.notes) > 0 }
}

