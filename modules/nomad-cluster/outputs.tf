output "asg_name" {
  value = aws_autoscaling_group.autoscaling_group.name
}

output "cluster_tag_key" {
  value = var.cluster_tag_key
}

output "cluster_tag_value" {
  value = var.cluster_tag_value
}

output "cluster_size" {
  value = aws_autoscaling_group.autoscaling_group.desired_capacity
}

output "launch_config_name" {
  value = aws_launch_configuration.launch_configuration.name
}

output "iam_instance_profile_arn" {
  value = element(concat(aws_iam_instance_profile.instance_profile.*.arn, [""]), 0)
  description = "This is the arn of instance profile if enable_iam_setup variable is set to true"
}

output "iam_instance_profile_id" {
  value = element(concat(aws_iam_instance_profile.instance_profile.*.id, [""]), 0)
  description = "This is the id of instance profile if enable_iam_setup variable is set to true"
}

output "iam_instance_profile_name" {
  value = element(concat(aws_iam_instance_profile.instance_profile.*.name, [""]), 0)
  description = "This is the name of instance profile if enable_iam_setup variable is set to true"
}

output "iam_role_arn" {
  value       = element(concat(aws_iam_role.instance_role.*.arn, [""]), 0)
  description = "This is the arn of instance role if enable_iam_setup variable is set to true"
}

output "iam_role_id" {
  value       = element(concat(aws_iam_role.instance_role.*.id, [""]), 0)
  description = "This is the id of instance role if enable_iam_setup variable is set to true"
}

output "security_group_id" {
  value = aws_security_group.lc_security_group.id
}

