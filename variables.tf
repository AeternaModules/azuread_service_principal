variable "service_principals" {
  description = <<EOT
Map of service_principals, attributes below
Required:
    - client_id
Optional:
    - account_enabled
    - alternative_names
    - app_role_assignment_required
    - description
    - login_url
    - notes
    - notification_email_addresses
    - owners
    - preferred_single_sign_on_mode
    - tags
    - use_existing
    - feature_tags (block):
        - custom_single_sign_on (optional)
        - enterprise (optional)
        - gallery (optional)
        - hide (optional)
    - features (block):
        - custom_single_sign_on_app (optional)
        - enterprise_application (optional)
        - gallery_application (optional)
        - visible_to_users (optional)
    - saml_single_sign_on (block):
        - relay_state (optional)
EOT

  type = map(object({
    client_id                     = string
    account_enabled               = optional(bool)
    alternative_names             = optional(set(string))
    app_role_assignment_required  = optional(bool)
    description                   = optional(string)
    login_url                     = optional(string)
    notes                         = optional(string)
    notification_email_addresses  = optional(set(string))
    owners                        = optional(set(string))
    preferred_single_sign_on_mode = optional(string)
    tags                          = optional(set(string))
    use_existing                  = optional(bool)
    feature_tags = optional(list(object({
      custom_single_sign_on = optional(bool)
      enterprise            = optional(bool)
      gallery               = optional(bool)
      hide                  = optional(bool)
    })))
    features = optional(list(object({
      custom_single_sign_on_app = optional(bool)
      enterprise_application    = optional(bool)
      gallery_application       = optional(bool)
      visible_to_users          = optional(bool)
    })))
    saml_single_sign_on = optional(object({
      relay_state = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_principals : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.client_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principals : (
        v.alternative_names == null || (alltrue([for x in v.alternative_names : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principals : (
        v.description == null || (length(v.description) >= 0 && length(v.description) <= 1024)
      )
    ])
    error_message = "must be between 0 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principals : (
        v.notes == null || (length(v.notes) >= 0 && length(v.notes) <= 1024)
      )
    ])
    error_message = "must be between 0 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principals : (
        v.notification_email_addresses == null || (alltrue([for x in v.notification_email_addresses : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principals : (
        v.owners == null || (alltrue([for x in v.owners : can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", x))]))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principals : (
        v.saml_single_sign_on == null || (v.saml_single_sign_on.relay_state == null || (length(v.saml_single_sign_on.relay_state) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

