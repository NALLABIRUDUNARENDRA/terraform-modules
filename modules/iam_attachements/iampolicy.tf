resource "aws_iam_policy" "policy" {
  name        = "${var.policyname}"
  path        = "/"
  description = "My test policy"

 policy = <<EOF
{
  "Version" : "2012-10-17",
  "Statement" : [
    {
      "Action" : [
        "ec2:Describe*",
        "S3:*"
      ],
      "Effect"   : "Allow",
      "Resource" : "*"
    }
 ]
}
EOF
}


resource "aws_iam_policy_attachment" "test-attach" {
  name       = "test-attachment"
  roles      = ["${var.attachroles}"]
  policy_arn = aws_iam_policy.policy.arn
}


