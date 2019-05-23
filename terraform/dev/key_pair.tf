resource "aws_key_pair" "aws_dev_key" {
  key_name   = "dev_node"
  public_key = "${file("aws_dev_key.pub")}"
}
