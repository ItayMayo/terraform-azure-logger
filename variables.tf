locals {
  log_categories     = try(data.azurerm_monitor_diagnostic_categories.diagnostic_categories.log_category_types, [])
  metrics_categories = try(data.azurerm_monitor_diagnostic_categories.diagnostic_categories.metrics, [])
}
