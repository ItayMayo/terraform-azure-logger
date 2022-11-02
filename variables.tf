locals {
  does_resource_contain_category_groups = try(module.log_categories_module["resource"].diagnostic_category_groups, []) != []

  subscription_log_category_groups = [
    "Administrative",
    "Security",
    "ServiceHealth",
    "Alert",
    "Recommendation",
    "Policy",
    "Autoscale",
  ]
}
