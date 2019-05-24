output "node-ip" {
  value = "${aws_eip.node-eip.*.public_ip}"
}

output "monitoring-ip" {
  value = "${aws_eip.monitoring-eip.public_ip}"
}
