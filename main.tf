provider "aws" {
  region     = "us-east-1"
}

module nallabirudu16-testvpc {
source = "./modules/vpc"
vpc_cidr = "10.120.0.0/16"
vpc_name = "nallabirudu16-testvpc"
IGW_name = "nallabirudu16_test-IGW"
key_name = "terraformmodules"
azs = ["us-east-1a","us-east-1b","us-east-1c"]
public_cidrs = ["10.120.1.0/24","10.120.2.0/24","10.120.3.0/24"]
private_cidrs = ["10.120.10.0/24","10.120.20.0/24","10.120.30.0/24"]
Main_Routing_Table =  "Main_Routing_Table"
Private_Routing_Table = "Private_Routing_Table"
environment = "Test"
}


module nallabirudu16-ec2 {
source = "./modules/ec2"
imagename = "ami-0574da719dca65348"
instance_type = "t2.nano"
key_name = "terraformmodules"
sgid = "${module.nallabirudu16-testvpc.sgid}"
machinecount = "${module.nallabirudu16-testvpc.env == "Test" ? 3:1}"
vpcname = "${module.nallabirudu16-testvpc.vpcname}"
public-subnets = "${module.nallabirudu16-testvpc. all_public_subnets}"
}

module nallabirudu16-Devvpc {
source = "./modules/vpc"
vpc_cidr = "10.160.0.0/16"
vpc_name = "nallabirudu16-Devvpc"
IGW_name = "nallabirudu16_Dev-IGW"
key_name = "terraformmodules"
azs = ["us-east-1a","us-east-1b","us-east-1c"]
public_cidrs = ["10.160.1.0/24","10.160.2.0/24","10.160.3.0/24"]
private_cidrs = ["10.160.10.0/24","10.160.20.0/24","10.160.30.0/24"]
Main_Routing_Table =  "Main_Routing_Table"
Private_Routing_Table = "Private_Routing_Table"
environment = "Dev"
}

module nallabirudu16-Prodvpc {
source = "./modules/vpc"
vpc_cidr = "10.180.0.0/16"
vpc_name = "nallabirudu16-Prodvpc"
IGW_name = "nallabirudu16_Prod-IGW"
key_name = "terraformmodules"
azs = ["us-east-1a","us-east-1b","us-east-1c"]
public_cidrs = ["10.180.1.0/24","10.180.2.0/24","10.180.3.0/24"]
private_cidrs = ["10.180.10.0/24","10.180.20.0/24","10.180.30.0/24"]
Main_Routing_Table =  "Main_Routing_Table"
Private_Routing_Table = "Private_Routing_Table"
environment = "Prod"
}
