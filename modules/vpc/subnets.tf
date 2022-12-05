resource "aws_subnet" "subnet1-public" {
    vpc_id ="${aws_vpc.nallabirudu16.id}"
    availability_zone = "us-east-1a"
    cidr_block ="${var.public_subnet1_cidr}"
    tags = {
        Name = "${var.public_subnet1_name}"
    }
 }

resource "aws_subnet" "subnet2-public" {
    vpc_id ="${aws_vpc.nallabirudu16.id}"
    availability_zone = "us-east-1b"
    cidr_block ="${var.public_subnet2_cidr}"
    tags = {
        Name = "${var.public_subnet2_name}"
    }
 }
  resource "aws_subnet" "subnet3-public" {
    vpc_id ="${aws_vpc.nallabirudu16.id}"
    availability_zone = "us-east-1c"
    cidr_block ="${var.public_subnet3_cidr}"
    tags = {
        Name = "${var.public_subnet3_name}"
    }
 }