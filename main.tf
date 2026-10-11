resource "azuredevops_workitemtrackingprocess_process" "workitemtrackingprocess_processes" {
  for_each = var.workitemtrackingprocess_processes

  name                   = each.value.name
  parent_process_type_id = each.value.parent_process_type_id
  description            = each.value.description
  is_default             = each.value.is_default
  is_enabled             = each.value.is_enabled
  reference_name         = each.value.reference_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

