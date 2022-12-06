resource "aws_route_table" "terraform-public" {
  vpc_id = "${aws_vpc.nallabirudu16.id}"
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.money.id}"
  }
 tags = {
     name = "${var.Main_Routing_Table}"
  }
}


resource "aws_route_table" "terraform-private" {
  vpc_id = "${aws_vpc.nallabirudu16.id}"
  tags = {
    name = "${var.Private_Routing_Table}"
  }
}


resource "aws_route_table_association" "public-cidrs" {
    count = "${length(var.public_cidrs)}"
    subnet_id      = "${element(aws_subnet.public-subnets.*.id,count.index)}"
    route_table_id = "${aws_route_table.terraform-public.id}"
}

resource "aws_route_table_association" "private-cidrs" {
    count = "${length(var.private_cidrs)}"
    subnet_id      = "${element(aws_subnet.private-subnets.*.id,count.index)}"
    route_table_id = "${aws_route_table.terraform-private.id}"
}


