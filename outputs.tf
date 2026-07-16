output "service_principals_id" {
  description = "Map of id values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_principals_account_enabled" {
  description = "Map of account_enabled values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.account_enabled if v.account_enabled != null }
}
output "service_principals_alternative_names" {
  description = "Map of alternative_names values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.alternative_names if v.alternative_names != null && length(v.alternative_names) > 0 }
}
output "service_principals_app_role_assignment_required" {
  description = "Map of app_role_assignment_required values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.app_role_assignment_required if v.app_role_assignment_required != null }
}
output "service_principals_app_role_ids" {
  description = "Map of app_role_ids values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.app_role_ids if v.app_role_ids != null && length(v.app_role_ids) > 0 }
}
output "service_principals_app_roles" {
  description = "Map of app_roles values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.app_roles if v.app_roles != null && length(v.app_roles) > 0 }
}
output "service_principals_application_tenant_id" {
  description = "Map of application_tenant_id values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.application_tenant_id if v.application_tenant_id != null && length(v.application_tenant_id) > 0 }
}
output "service_principals_client_id" {
  description = "Map of client_id values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "service_principals_description" {
  description = "Map of description values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.description if v.description != null && length(v.description) > 0 }
}
output "service_principals_display_name" {
  description = "Map of display_name values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "service_principals_feature_tags" {
  description = "Map of feature_tags values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.feature_tags if v.feature_tags != null && length(v.feature_tags) > 0 }
}
output "service_principals_features" {
  description = "Map of features values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.features if v.features != null && length(v.features) > 0 }
}
output "service_principals_homepage_url" {
  description = "Map of homepage_url values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.homepage_url if v.homepage_url != null && length(v.homepage_url) > 0 }
}
output "service_principals_login_url" {
  description = "Map of login_url values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.login_url if v.login_url != null && length(v.login_url) > 0 }
}
output "service_principals_logout_url" {
  description = "Map of logout_url values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.logout_url if v.logout_url != null && length(v.logout_url) > 0 }
}
output "service_principals_notes" {
  description = "Map of notes values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.notes if v.notes != null && length(v.notes) > 0 }
}
output "service_principals_notification_email_addresses" {
  description = "Map of notification_email_addresses values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.notification_email_addresses if v.notification_email_addresses != null && length(v.notification_email_addresses) > 0 }
}
output "service_principals_oauth2_permission_scope_ids" {
  description = "Map of oauth2_permission_scope_ids values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.oauth2_permission_scope_ids if v.oauth2_permission_scope_ids != null && length(v.oauth2_permission_scope_ids) > 0 }
}
output "service_principals_oauth2_permission_scopes" {
  description = "Map of oauth2_permission_scopes values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.oauth2_permission_scopes if v.oauth2_permission_scopes != null && length(v.oauth2_permission_scopes) > 0 }
}
output "service_principals_object_id" {
  description = "Map of object_id values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.object_id if v.object_id != null && length(v.object_id) > 0 }
}
output "service_principals_owners" {
  description = "Map of owners values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.owners if v.owners != null && length(v.owners) > 0 }
}
output "service_principals_preferred_single_sign_on_mode" {
  description = "Map of preferred_single_sign_on_mode values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.preferred_single_sign_on_mode if v.preferred_single_sign_on_mode != null && length(v.preferred_single_sign_on_mode) > 0 }
}
output "service_principals_redirect_uris" {
  description = "Map of redirect_uris values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.redirect_uris if v.redirect_uris != null && length(v.redirect_uris) > 0 }
}
output "service_principals_saml_metadata_url" {
  description = "Map of saml_metadata_url values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.saml_metadata_url if v.saml_metadata_url != null && length(v.saml_metadata_url) > 0 }
}
output "service_principals_saml_single_sign_on" {
  description = "Map of saml_single_sign_on values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.saml_single_sign_on if v.saml_single_sign_on != null && length(v.saml_single_sign_on) > 0 }
}
output "service_principals_service_principal_names" {
  description = "Map of service_principal_names values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.service_principal_names if v.service_principal_names != null && length(v.service_principal_names) > 0 }
}
output "service_principals_sign_in_audience" {
  description = "Map of sign_in_audience values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.sign_in_audience if v.sign_in_audience != null && length(v.sign_in_audience) > 0 }
}
output "service_principals_tags" {
  description = "Map of tags values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "service_principals_type" {
  description = "Map of type values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.type if v.type != null && length(v.type) > 0 }
}
output "service_principals_use_existing" {
  description = "Map of use_existing values across all service_principals, keyed the same as var.service_principals"
  value       = { for k, v in azuread_service_principal.service_principals : k => v.use_existing if v.use_existing != null }
}

