resource "aws_security_group" "subnetsecurity" {
  vpc_id = aws_vpc.environment-example-two.id

  ingress {
    cidr_blocks = [
      aws_vpc.environment-example-two.cidr_block
    ]
    from_port = 80
    protocol = "tcp"
    to_port = 80
  }
}