variable "cloud_project_kube_iprestrictions" {
  description = <<EOT
Map of cloud_project_kube_iprestrictions, attributes below
Required:
    - ips
    - kube_id
    - service_name
Optional:
    - timeouts (block):
        - create (optional)
        - default (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    ips          = set(string)
    kube_id      = string
    service_name = string
    timeouts = optional(object({
      create  = optional(string)
      default = optional(string)
      delete  = optional(string)
      read    = optional(string)
      update  = optional(string)
    }))
  }))
}

