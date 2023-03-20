# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Output declarations
output "vpc_id" {
  description = "ID of project VPC"
  value       = module.vpc.vpc_id
sensitive   = true
}

output "web_server_count" {
  description = "Number of web servers provisioned"
  value       = length(module.ec2_instances.instance_ids)
}

