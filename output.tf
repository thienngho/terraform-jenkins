output "jenkins_public_dns" {
  value = "[ ${aws_instance.jenkins.public_dns} ]"
}

output "simple-ad_dns_name" {
  value = "${aws_directory_service_directory.simple-ad.name}"
}

output "simple-ad_dns_ip_addresses" {
  value = "${aws_directory_service_directory.simple-ad.dns_ip_addresses}"
}
