resource "google_firebase_remote_config_remote_config" "firebase_remote_config_remote_configs" {
  for_each = var.firebase_remote_config_remote_configs

  project = each.value.project

  dynamic "conditions" {
    for_each = each.value.conditions != null ? each.value.conditions : []
    content {
      expression = conditions.value.expression
      name       = conditions.value.name
      tag_color  = conditions.value.tag_color
    }
  }

  dynamic "parameter_groups" {
    for_each = each.value.parameter_groups != null ? each.value.parameter_groups : []
    content {
      description          = parameter_groups.value.description
      parameter_group_name = parameter_groups.value.parameter_group_name
      dynamic "parameters" {
        for_each = parameter_groups.value.parameters != null ? parameter_groups.value.parameters : []
        content {
          dynamic "conditional_values" {
            for_each = parameters.value.conditional_values != null ? parameters.value.conditional_values : []
            content {
              condition_name     = conditional_values.value.condition_name
              use_in_app_default = conditional_values.value.use_in_app_default
              value              = conditional_values.value.value
            }
          }
          dynamic "default_value" {
            for_each = parameters.value.default_value != null ? [parameters.value.default_value] : []
            content {
              use_in_app_default = default_value.value.use_in_app_default
              value              = default_value.value.value
            }
          }
          description    = parameters.value.description
          parameter_name = parameters.value.parameter_name
          value_type     = parameters.value.value_type
        }
      }
    }
  }

  dynamic "parameters" {
    for_each = each.value.parameters != null ? each.value.parameters : []
    content {
      dynamic "conditional_values" {
        for_each = parameters.value.conditional_values != null ? parameters.value.conditional_values : []
        content {
          condition_name     = conditional_values.value.condition_name
          use_in_app_default = conditional_values.value.use_in_app_default
          value              = conditional_values.value.value
        }
      }
      dynamic "default_value" {
        for_each = parameters.value.default_value != null ? [parameters.value.default_value] : []
        content {
          use_in_app_default = default_value.value.use_in_app_default
          value              = default_value.value.value
        }
      }
      description    = parameters.value.description
      parameter_name = parameters.value.parameter_name
      value_type     = parameters.value.value_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

