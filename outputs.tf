output "workitemtrackingprocess_processes_id" {
  description = "Map of id values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.id }
}
output "workitemtrackingprocess_processes_customization_type" {
  description = "Map of customization_type values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.customization_type }
}
output "workitemtrackingprocess_processes_description" {
  description = "Map of description values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.description }
}
output "workitemtrackingprocess_processes_is_default" {
  description = "Map of is_default values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.is_default }
}
output "workitemtrackingprocess_processes_is_enabled" {
  description = "Map of is_enabled values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.is_enabled }
}
output "workitemtrackingprocess_processes_name" {
  description = "Map of name values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.name }
}
output "workitemtrackingprocess_processes_parent_process_type_id" {
  description = "Map of parent_process_type_id values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.parent_process_type_id }
}
output "workitemtrackingprocess_processes_reference_name" {
  description = "Map of reference_name values across all workitemtrackingprocess_processes, keyed the same as var.workitemtrackingprocess_processes"
  value       = { for k, v in azuredevops_workitemtrackingprocess_process.workitemtrackingprocess_processes : k => v.reference_name }
}

