output "firebase_remote_config_remote_configs_id" {
  description = "Map of id values across all firebase_remote_config_remote_configs, keyed the same as var.firebase_remote_config_remote_configs except keys with no id are omitted"
  value       = { for k, v in google_firebase_remote_config_remote_config.firebase_remote_config_remote_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "firebase_remote_config_remote_configs_conditions" {
  description = "Map of conditions values across all firebase_remote_config_remote_configs, keyed the same as var.firebase_remote_config_remote_configs except keys with no conditions are omitted"
  value       = { for k, v in google_firebase_remote_config_remote_config.firebase_remote_config_remote_configs : k => v.conditions if v.conditions != null && length(v.conditions) > 0 }
}
output "firebase_remote_config_remote_configs_name" {
  description = "Map of name values across all firebase_remote_config_remote_configs, keyed the same as var.firebase_remote_config_remote_configs except keys with no name are omitted"
  value       = { for k, v in google_firebase_remote_config_remote_config.firebase_remote_config_remote_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "firebase_remote_config_remote_configs_parameter_groups" {
  description = "Map of parameter_groups values across all firebase_remote_config_remote_configs, keyed the same as var.firebase_remote_config_remote_configs except keys with no parameter_groups are omitted"
  value       = { for k, v in google_firebase_remote_config_remote_config.firebase_remote_config_remote_configs : k => v.parameter_groups if v.parameter_groups != null && length(v.parameter_groups) > 0 }
}
output "firebase_remote_config_remote_configs_parameters" {
  description = "Map of parameters values across all firebase_remote_config_remote_configs, keyed the same as var.firebase_remote_config_remote_configs except keys with no parameters are omitted"
  value       = { for k, v in google_firebase_remote_config_remote_config.firebase_remote_config_remote_configs : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "firebase_remote_config_remote_configs_project" {
  description = "Map of project values across all firebase_remote_config_remote_configs, keyed the same as var.firebase_remote_config_remote_configs except keys with no project are omitted"
  value       = { for k, v in google_firebase_remote_config_remote_config.firebase_remote_config_remote_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "firebase_remote_config_remote_configs_version" {
  description = "Map of version values across all firebase_remote_config_remote_configs, keyed the same as var.firebase_remote_config_remote_configs except keys with no version are omitted"
  value       = { for k, v in google_firebase_remote_config_remote_config.firebase_remote_config_remote_configs : k => v.version if v.version != null && length(v.version) > 0 }
}

