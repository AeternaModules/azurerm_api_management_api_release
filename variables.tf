variable "api_management_api_releases" {
  description = <<EOT
Map of api_management_api_releases, attributes below
Required:
    - api_id
    - name
Optional:
    - notes
EOT

  type = map(object({
    api_id = string
    name   = string
    notes  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_api_releases : (
        v.notes == null || (length(v.notes) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_api_release's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ApiManagementChildName] !matched
  # path: api_id
  #   source:    [from api.ValidateApiID] !ok
  # path: api_id
  #   source:    [from api.ValidateApiID] err != nil
}

