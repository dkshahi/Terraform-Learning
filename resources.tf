resource "aws_vpc" "environment-example-two" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support  = true
  tags = {
    Name = "Terraform-aws-vpc-example"
  }
}

#resource "aws_instance" "terraform" {
#  ami = "ami-13be557e"
#  instance_type = "t2.micro"
#}