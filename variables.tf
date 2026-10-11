variable "workitemtrackingprocess_processes" {
  description = <<EOT
Map of workitemtrackingprocess_processes, attributes below
Required:
    - name
    - parent_process_type_id
Optional:
    - description
    - is_default
    - is_enabled
    - reference_name
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name                   = string
    parent_process_type_id = string
    description            = optional(string)
    is_default             = optional(bool)
    is_enabled             = optional(bool)
    reference_name         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_processes : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_processes : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.parent_process_type_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_processes : (
        v.reference_name == null || (length(trimspace(v.reference_name)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

