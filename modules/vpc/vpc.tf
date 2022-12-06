resource "aws_vpc" "nallabirudu16" {
  cidr_block       = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  tags = {
    Name = "${var.vpc_name}"
    owner = "nallabirudu narendra"
    enviroment = "Prod"
    
   }
 }
resource "aws_internet_gateway" "money" {
    vpc_id = "${aws_vpc.nallabirudu16.id}"
	tags = {
        Name = "work"
    }
}
