resource "aws_instance" "my-ec2"{
    ami="ami-0c0933ae5caf0f5f9"
    instance_type="t2.micro"
    tags = {
    Name = "ec2-sharaf"
  }
}