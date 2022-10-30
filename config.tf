variable "name" {
  type = string
}

variable "target_resource_id" {
  type = string
}

variable "storage_account_id" {
  default = null
  type    = string
}

variable "log_analytics_workspace_id" {
  default = null
  type    = string

}

variable "eventhub_name" {
  default = null
  type    = string
}

variable "eventhub_authorization_rule_id" {
  default = null
  type    = string
}

variable "retention_policy" {
  default = null
  type = object({
    days    = number
    enabled = bool
  })
}
