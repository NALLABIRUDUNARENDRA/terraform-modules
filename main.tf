provider "aws" {
  region     = "us-east-1"
}

module nallabirudu16-testvpc {
source = "./modules/vpc"
vpc_cidr = "10.120.0.0/16"
vpc_name = "nallabirudu16-testvpc"
IGW_name = "nallabirudu16_test-IGW"
key_name = "terraform2"
azs = ["us-east-1a","us-east-1b","us-east-1c"]
public_cidrs = ["10.120.1.0/24","10.120.2.0/24","10.120.3.0/24"]
private_cidrs = ["10.120.10.0/24","10.120.20.0/24","10.120.30.0/24"]
Main_Routing_Table =  "Main_Routing_Table"
Private_Routing_Table = "Private_Routing_Table"
environment = "Prod"
}


module nallabirudu16-ec2 {
source = "./modules/ec2"
imagename = "ami-0574da719dca65348"
instance_type = "t2.micro"
key_name = "terraformmodules"
sgid = "${module.nallabirudu16-testvpc.sgid}"
machinecount = "${module.nallabirudu16-testvpc.env == "Prod" ? 3:1}"
vpcname = "${module.nallabirudu16-testvpc.vpcname}"
public-subnets = "${module.nallabirudu16-testvpc. all_public_subnets}"
}

