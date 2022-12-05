resource "aws_instance" "web-1" {
  ami    = var.imagename
  instance_type = "t2.nano"
  key_name = "terraform2"
  subnet_id =var.subnetid
  vpc_security_group_ids = ["${var.sgid}"]
  associate_public_ip_address = true 
  tags = {
    Name =var.servername
   }
}

module nallabirudu16-testec2 {
source = "./modules/ec2"
imagename = "ami-0574da719dca65348"
subnetid = "${module.nallabirudu16-testvpc.subnet1id}"
sgid = "${module.nallabirudu16-testvpc.sgid}"
servername = "Test-Env-Server-1"
}
