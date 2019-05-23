resource "aws_eip" "dev-eip" {
  count = "${var.nodes_count}"

  tags = {
    Name        = "node_${count.index}"
    Environment = "dev"
  }
}
