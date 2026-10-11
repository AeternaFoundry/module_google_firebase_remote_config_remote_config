variable "firebase_remote_config_remote_configs" {
  description = <<EOT
Map of firebase_remote_config_remote_configs, attributes below
Optional:
    - project
    - conditions (block):
        - expression (required)
        - name (required)
        - tag_color (optional)
    - parameter_groups (block):
        - description (optional)
        - parameter_group_name (required)
        - parameters (optional, block):
            - conditional_values (optional, block):
                - condition_name (required)
                - use_in_app_default (optional)
                - value (optional)
            - default_value (optional, block):
                - use_in_app_default (optional)
                - value (optional)
            - description (optional)
            - parameter_name (required)
            - value_type (optional)
    - parameters (block):
        - conditional_values (optional, block):
            - condition_name (required)
            - use_in_app_default (optional)
            - value (optional)
        - default_value (optional, block):
            - use_in_app_default (optional)
            - value (optional)
        - description (optional)
        - parameter_name (required)
        - value_type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    project = optional(string)
    conditions = optional(list(object({
      expression = string
      name       = string
      tag_color  = optional(string)
    })))
    parameter_groups = optional(list(object({
      description          = optional(string)
      parameter_group_name = string
      parameters = optional(list(object({
        conditional_values = optional(list(object({
          condition_name     = string
          use_in_app_default = optional(bool)
          value              = optional(string)
        })))
        default_value = optional(object({
          use_in_app_default = optional(bool)
          value              = optional(string)
        }))
        description    = optional(string)
        parameter_name = string
        value_type     = optional(string)
      })))
    })))
    parameters = optional(list(object({
      conditional_values = optional(list(object({
        condition_name     = string
        use_in_app_default = optional(bool)
        value              = optional(string)
      })))
      default_value = optional(object({
        use_in_app_default = optional(bool)
        value              = optional(string)
      }))
      description    = optional(string)
      parameter_name = string
      value_type     = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

