output "lb_target_group_arn" {
  value       = aws_lb_target_group.this.arn
  description = "Target Group arn"
}
