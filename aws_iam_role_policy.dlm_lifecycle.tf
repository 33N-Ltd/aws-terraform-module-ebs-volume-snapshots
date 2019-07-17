resource "aws_iam_role_policy" "dlm_lifecycle" {
  name = "dlm-lifecycle-policy"
  role = "${aws_iam_role.dlm_lifecycle_role.id}"
  policy = "${data.aws_iam_policy_document.dlm_lifecycle.json}"
}