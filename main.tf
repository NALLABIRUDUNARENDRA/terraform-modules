provider "aws" {
  region     = "us-east-1"
}

module nallabirudu16-testvpc {
source = "./modules/vpc"
vpc_cidr = "10.120.0.0/16"
vpc_name = "nallabirudu16-testvpc"
IGW_name = "nallabirudu16_test-IGW"
key_name = "terraform2"
public_subnet1_cidr = "10.120.1.0/24"
public_subnet2_cidr = "10.120.2.0/24"
public_subnet3_cidr = "10.120.3.0/24"
public_subnet1_name = "subnet-public-1"
public_subnet2_name = "subnet2-public-2"
public_subnet3_name = "subnet3-public-3"
Main_routing_table =  "Main_routing_table"
}

module nallabirudu16-Devvpc {
source = "./modules/vpc"
vpc_cidr = "10.160.0.0/16"
vpc_name = "nallabirudu16-Devtvpc"
IGW_name = "nallabirudu16_Dev-IGW"
key_name = "terraform2"
public_subnet1_cidr = "10.160.1.0/24"
public_subnet2_cidr = "10.160.2.0/24"
public_subnet3_cidr = "10.160.3.0/24"
public_subnet1_name = "subnet-public-1"
public_subnet2_name = "subnet2-public-2"
public_subnet3_name = "subnet3-public-3"
Main_routing_table =  "Main_routing_table"
}

module nallabirudu16-Prodvpc {
source = "./modules/vpc"
vpc_cidr = "10.180.0.0/16"
vpc_name = "nallabirudu16-Prodvpc"
IGW_name = "nallabirudu16_Prod-IGW"
key_name = "terraform2"
public_subnet1_cidr = "10.180.1.0/24"
public_subnet2_cidr = "10.180.2.0/24"
public_subnet3_cidr = "10.180.3.0/24"
public_subnet1_name = "subnet-public-1"
public_subnet2_name = "subnet2-public-2"
public_subnet3_name = "subnet3-public-3"
Main_routing_table =  "Main_routing_table"
}
