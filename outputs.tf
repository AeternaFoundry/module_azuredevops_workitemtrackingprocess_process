output "workitemtrackingprocess_processes_id" {
  description = "Map of id values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes except keys with no id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemtrackingprocess_processes_customization_type" {
  description = "Map of customization_type values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes except keys with no customization_type are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.customization_type if v.customization_type != null && length(v.customization_type) > 0 }
}
output "workitemtrackingprocess_processes_description" {
  description = "Map of description values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes except keys with no description are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "workitemtrackingprocess_processes_is_default" {
  description = "Map of is_default values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes except keys with no is_default are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.is_default if v.is_default != null }
}
output "workitemtrackingprocess_processes_is_enabled" {
  description = "Map of is_enabled values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes except keys with no is_enabled are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.is_enabled if v.is_enabled != null }
}
output "workitemtrackingprocess_processes_name" {
  description = "Map of name values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes except keys with no name are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workitemtrackingprocess_processes_parent_process_type_id" {
  description = "Map of parent_process_type_id values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes except keys with no parent_process_type_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.parent_process_type_id if v.parent_process_type_id != null && length(v.parent_process_type_id) > 0 }
}
output "workitemtrackingprocess_processes_reference_name" {
  description = "Map of reference_name values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes except keys with no reference_name are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.reference_name if v.reference_name != null && length(v.reference_name) > 0 }
}

