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
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

