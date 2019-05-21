resource "aws_key_pair" "aws_dev_key" {
  key_name   = "aws_dev"
  public_key = "${file("aws_dev_key.pub")}"
}
