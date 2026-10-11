output "networkmanager_prefix_list_associations_core_network_id" {
  description = "Map of core_network_id values across all networkmanager_prefix_list_associations, keyed the same as var.networkmanager_prefix_list_associations"
  value       = { for k, v in aws_networkmanager_prefix_list_association.networkmanager_prefix_list_associations : k => v.core_network_id if v.core_network_id != null && length(v.core_network_id) > 0 }
}
output "networkmanager_prefix_list_associations_prefix_list_alias" {
  description = "Map of prefix_list_alias values across all networkmanager_prefix_list_associations, keyed the same as var.networkmanager_prefix_list_associations"
  value       = { for k, v in aws_networkmanager_prefix_list_association.networkmanager_prefix_list_associations : k => v.prefix_list_alias if v.prefix_list_alias != null && length(v.prefix_list_alias) > 0 }
}
output "networkmanager_prefix_list_associations_prefix_list_arn" {
  description = "Map of prefix_list_arn values across all networkmanager_prefix_list_associations, keyed the same as var.networkmanager_prefix_list_associations"
  value       = { for k, v in aws_networkmanager_prefix_list_association.networkmanager_prefix_list_associations : k => v.prefix_list_arn if v.prefix_list_arn != null && length(v.prefix_list_arn) > 0 }
}

