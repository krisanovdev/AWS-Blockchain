resource "aws_eip" "node-eip" {
  count = "${var.nodes_count}"

  tags = {
    Name        = "node_${count.index}"
    Environment = "dev"
  }
}

resource "aws_eip" "monitoring-eip" {
  tags = {
    Name        = "monitoring"
    Environment = "dev"
  }
}
