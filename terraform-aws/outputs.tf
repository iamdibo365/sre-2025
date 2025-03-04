output "alb_dns_name" {
  value       = aws_lb.web.dns_name
  description = "The DNS name of the load balancer"
}