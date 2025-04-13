# output "instance_id" {
#   description = "ID of the EC2 instance"
#   value       = aws_instance.app_server.host_id
# }
#
# output "instance_public_ip" {
#   description = "Public IP Address"
#   value       = aws_instance.app_server.public_ip
# }


output "instance_ids" {
  description = "List of EC2 instance IDs"
  value       = [for instance in aws_instance.app_server : instance.id]
}

output "instance_public_ips" {
  description = "List of public IPs"
  value       = [for instance in aws_instance.app_server : instance.public_ip]
}
