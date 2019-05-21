resource "aws_instance" "dev-node" {
  count         = 1
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.aws_dev_key.key_name}"

  security_groups = [
    "${aws_security_group.allow_ssh.name}",
    "${aws_security_group.allow_outbound.name}",
  ]

  tags {
    Name        = "dev_node_${count.index}"
    Environment = "dev"
  }
}
