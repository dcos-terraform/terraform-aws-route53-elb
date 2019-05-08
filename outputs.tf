output "public_fqdns" {
  description = "List of Public FQDNs"
  value       = "${aws_route53_record.masters_alias.name}"
}
