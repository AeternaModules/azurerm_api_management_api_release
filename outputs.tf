output "api_management_api_releases" {
  description = "All api_management_api_release resources"
  value       = azurerm_api_management_api_release.api_management_api_releases
}
output "api_management_api_releases_api_id" {
  description = "List of api_id values across all api_management_api_releases"
  value       = [for k, v in azurerm_api_management_api_release.api_management_api_releases : v.api_id]
}
output "api_management_api_releases_name" {
  description = "List of name values across all api_management_api_releases"
  value       = [for k, v in azurerm_api_management_api_release.api_management_api_releases : v.name]
}
output "api_management_api_releases_notes" {
  description = "List of notes values across all api_management_api_releases"
  value       = [for k, v in azurerm_api_management_api_release.api_management_api_releases : v.notes]
}

