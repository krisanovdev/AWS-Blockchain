resource "aws_eip" "dev-eip" {
  tags = {
    Name        = "*node*"
    Environment = "dev"
  }
}
