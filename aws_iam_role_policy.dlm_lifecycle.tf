resource "aws_iam_role_policy" "dlm_lifecycle" {
  name   = "EC2-DLM-LIFECYCLE-POLICY"
  role   = aws_iam_role.dlm_lifecycle_role.id
  policy = data.aws_iam_policy_document.dlm_lifecycle.json
}

