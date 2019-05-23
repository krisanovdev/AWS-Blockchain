output "server-ip" {
  value = "${aws_eip.dev-eip.*.public_ip}"
}
