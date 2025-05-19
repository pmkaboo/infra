output "instance_arn" {
  description = "ARN of the instance"
  value       = aws_instance.this.arn
}

output "instance_ip" {
  description = "public IP of the instance"
  value       = aws_eip.this.public_ip
}
