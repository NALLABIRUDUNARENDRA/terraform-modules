resource "aws_instance" "public-server" {
  count = var.machinecount
  ami    = var.imagename
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id ="${element(var.public-subnets,count.index)}"
  vpc_security_group_ids = ["${var.sgid}"]
  associate_public_ip_address = true 
  tags = {
    Name ="${var.vpcname}-public-server-${count.index+1}"
   }
}


