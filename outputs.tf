output "alb_dns_name" {
  description = "the DNS name of the ALB"
  value       = aws_lb.main.dns_name
}

output "alb_arn" {
  description = "the ARN of the ALB"
  value       = aws_lb.main.arn
}

output "target_group_arn" {
  description = "the ARN of the target group"
  value       = aws_lb_target_group.api.arn
}
