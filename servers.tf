## AWS server instances
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]  # Canonical
}

resource "aws_instance" "tf_aws_vm_01" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet2.id
  tags = {
    Name = "aws_tf_vm_01"
  }
}