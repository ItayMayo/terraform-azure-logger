locals {
  log_category_types  = try(data.azurerm_monitor_diagnostic_categories.diagnostic_categories.log_category_types, [])
  log_category_groups = try(data.azurerm_monitor_diagnostic_categories.diagnostic_categories.log_category_groups, [])
  log_categories      = concat(local.log_category_types, local.log_category_groups)
  metrics_categories  = try(data.azurerm_monitor_diagnostic_categories.diagnostic_categories.metrics, [])
}
