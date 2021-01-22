output "Firewall_Management_URL" {
  value       = join("", ["https://", aws_eip.ManagementElasticIP.public_ip])
  description = "Firewall Management URL"
}

output "Firewall_Credentials" {
  value       = "Username/Password: admin/in*4ksh8JN2kdh"
  description = "Firewall Credentials"
}

output "Web_Server_URL" {
  value       = join("", ["http://", aws_eip.PublicElasticIP.public_ip])
  description = "Web Server URL"
}

output "Command_to_SSH_to_Web_Server" {
  value       = join("", ["ssh -i keys/two_tier_vpc_key -p 221 ubuntu@", aws_eip.PublicElasticIP.public_ip, ])
  description = "Command to SSH to Web Server"
}
