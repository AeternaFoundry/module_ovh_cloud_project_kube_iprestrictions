output "cloud_project_kube_iprestrictions_id" {
  description = "Map of id values across all cloud_project_kube_iprestrictions, keyed the same as var.cloud_project_kube_iprestrictions except keys with no id are omitted"
  value       = { for k, v in ovh_cloud_project_kube_iprestrictions.cloud_project_kube_iprestrictions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_project_kube_iprestrictions_ips" {
  description = "Map of ips values across all cloud_project_kube_iprestrictions, keyed the same as var.cloud_project_kube_iprestrictions except keys with no ips are omitted"
  value       = { for k, v in ovh_cloud_project_kube_iprestrictions.cloud_project_kube_iprestrictions : k => v.ips if v.ips != null && length(v.ips) > 0 }
}
output "cloud_project_kube_iprestrictions_kube_id" {
  description = "Map of kube_id values across all cloud_project_kube_iprestrictions, keyed the same as var.cloud_project_kube_iprestrictions except keys with no kube_id are omitted"
  value       = { for k, v in ovh_cloud_project_kube_iprestrictions.cloud_project_kube_iprestrictions : k => v.kube_id if v.kube_id != null && length(v.kube_id) > 0 }
}
output "cloud_project_kube_iprestrictions_service_name" {
  description = "Map of service_name values across all cloud_project_kube_iprestrictions, keyed the same as var.cloud_project_kube_iprestrictions except keys with no service_name are omitted"
  value       = { for k, v in ovh_cloud_project_kube_iprestrictions.cloud_project_kube_iprestrictions : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

