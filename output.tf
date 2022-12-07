output "testvpc" {
  value = "${module.nallabirudu16-testvpc.vpcid}"
}

output all_public_subnets {
  value = "${module.nallabirudu16-testvpc.all_public_subnets}"
}

output all_private_subnets {
  value = "${module.nallabirudu16-testvpc.all_private_subnets}"
}

output public_subnets_1 {
  value = "${module.nallabirudu16-testvpc.subnet1id}"
}

output public_subnets_2 {
  value = "${module.nallabirudu16-testvpc.subnet2id}"
}

output public_subnets_3 {
  value = "${module.nallabirudu16-testvpc.subnet3id}"
}

output env {
  value = "${module.nallabirudu16-testvpc.env}"
}

output rolename {
  value = "${module.nallabirudu16test_iam.rolename}"
}

