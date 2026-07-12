output "api_management_api_releases_id" {
  description = "Map of id values across all api_management_api_releases, keyed the same as var.api_management_api_releases"
  value       = { for k, v in azurerm_api_management_api_release.api_management_api_releases : k => v.id }
}
output "api_management_api_releases_api_id" {
  description = "Map of api_id values across all api_management_api_releases, keyed the same as var.api_management_api_releases"
  value       = { for k, v in azurerm_api_management_api_release.api_management_api_releases : k => v.api_id }
}
output "api_management_api_releases_name" {
  description = "Map of name values across all api_management_api_releases, keyed the same as var.api_management_api_releases"
  value       = { for k, v in azurerm_api_management_api_release.api_management_api_releases : k => v.name }
}
output "api_management_api_releases_notes" {
  description = "Map of notes values across all api_management_api_releases, keyed the same as var.api_management_api_releases"
  value       = { for k, v in azurerm_api_management_api_release.api_management_api_releases : k => v.notes }
}

