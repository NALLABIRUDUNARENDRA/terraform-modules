resource "aws_route_table" "public-routing-table" {
  vpc_id = "${aws_vpc.nallabirudu16.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.money.id}"
  }

  tags = {
    "name" = "${var.Main_routing_table}"
  }

}

resource "aws_route_table_association" "terraform-public1" {
    subnet_id      = "${aws_subnet.subnet1-public.id}"
    route_table_id = "${aws_route_table.public-routing-table.id}"
}
resource "aws_route_table_association" "terraform-public2" {
    subnet_id      = "${aws_subnet.subnet1-public.id}"
    route_table_id = "${aws_route_table.public-routing-table.id}"
}
resource "aws_route_table_association" "terraform-public3" {
    subnet_id      = "${aws_subnet.subnet1-public.id}"
    route_table_id = "${aws_route_table.public-routing-table.id}"
}
