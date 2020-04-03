resource "aws_dlm_lifecycle_policy" "main" {
  description        = "Volume Snapshot Lifecycle Policy"
  execution_role_arn = aws_iam_role.dlm_lifecycle_role.arn
  state              = "ENABLED"

  policy_details {
    resource_types = ["VOLUME"]

    schedule {
      name = "EBS snapshot policy"

      create_rule {
        interval      = var.snapshot_interval
        interval_unit = "HOURS"
        times         = [var.snapshot_time]
      }

      retain_rule {
        count = var.snapshot_number_retained
      }

      tags_to_add = {
        SnapshotCreator = "DLM"
      }

      copy_tags = true
    }
   
    target_tags = map(var.snapshot_tag, "true")
  }
}

