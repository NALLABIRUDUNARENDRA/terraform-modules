resource "aws_instance" "public-servers" {
  count = var.machinecount
  ami    = var.imagename
  instance_type = var.instance_type
  iam_instance_profile = "${var.iam_instance_profile}"
  key_name = var.key_name
  subnet_id ="${element(var.public-subnets,count.index)}"
  vpc_security_group_ids = ["${var.sgid}"]
  associate_public_ip_address = true 
  tags = {
    Name ="${var.vpcname}-public-server-${count.index+1}"
   }
  user_data = <<-EOF
	    #!/bin/bash
      sudo apt-get update
	    sudo apt-get install -y nginx
	    sudo systemctl start nginx
	    sudo systemctl enable nginx
	    echo "<h1>${var.vpcname}-public-server-${count.index+1}</h1>" | sudo tee /var/www/html/index.nginx-debian.html
  EOF

}





