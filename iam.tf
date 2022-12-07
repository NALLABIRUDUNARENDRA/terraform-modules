#Creating Role with name nallabirudu16TestRole
module nallabirudu16test_iam {
    source = "./modules/iam"
    rolename = "nallabirudu16TestRole"
    envname ="${module.nallabirudu16-testvpc.env}"
    instanceprofilename = "nallabirudu16test-ins-profile1"
}

# Creating IAM Policy and assigning to nallabirudu16TestRole
module nallabirudu16test_iam_policy  {
  source = "./modules/iam_attachements"
  attachroles = "${module.nallabirudu16test_iam.rolename}"
  policyname = "nallabirudu16-iam-policy1"
}

