resource "aws_instance" "my-ec2"{
    ami="ami-0c0933ae5caf0f5f9"
    instance_type="t2.micro"
    tags = {
    Name = "ec-sharaf"
  }

}
resource  "aws_eip" "my-eip"{
    vpc = true
}

resource "aws_eip_association" "associate"{
    instance_id=aws_instance.my-ec2.id
    allocation_id=aws_eip.my-eip.id

}
output "eip_value" {
    description = "VMs Private IP"
    value= aws_instance.my-ec2.public_ip
  

}
output "subnet_id" {
    description = "VMs Private IP"
    value= aws_instance.my-ec2.subnet_id
  

}
output "private_ip" {
    description = "VMs Private IP"
    value= aws_instance.my-ec2.private_ip
  

}
