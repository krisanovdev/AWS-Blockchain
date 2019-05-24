resource "aws_instance" "dev-node" {
  count         = "${var.nodes_count}"
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.aws_dev_key.key_name}"

  security_groups = [
    "${aws_security_group.allow_all.name}",
  ]

  tags {
    Name        = "node_${count.index}"
    Environment = "dev"
  }
}

resource "aws_instance" "dev-monitoring" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.aws_dev_key.key_name}"

  security_groups = [
    "${aws_security_group.allow_all.name}",
  ]

  tags {
    Name        = "monitoring"
    Environment = "dev"
  }
}
