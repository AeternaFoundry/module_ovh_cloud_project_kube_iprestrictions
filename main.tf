resource "ovh_cloud_project_kube_iprestrictions" "cloud_project_kube_iprestrictions" {
  for_each = var.cloud_project_kube_iprestrictions

  ips          = each.value.ips
  kube_id      = each.value.kube_id
  service_name = each.value.service_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create  = timeouts.value.create
      default = timeouts.value.default
      delete  = timeouts.value.delete
      read    = timeouts.value.read
      update  = timeouts.value.update
    }
  }
}

