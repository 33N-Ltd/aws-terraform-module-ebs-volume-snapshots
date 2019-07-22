# Snapshot policy
This module provides a snapshot backup policy that will applied to all volumes with the "backup: true" tag
## Mechanism
## Pre-requisites
All EC2 instances created with terraform should include the tag "backup: true"

## Limitations
This iteration does not include the facility to have more than one backup schedule.
This could be implemented by changing the tag requirements to "backup: 12", for example, and calling the module once
for each backup period required, and including the period in the names of all resource names.

## Example usage
In your Terrafom, call the module with the required variables.

```
module "ebs_volume_backups" {
    source                      = "git::ssh://git@github.com/osodevops/aws-terraform-module-s3.git/aws-terraform-module-ebs-volume-snapshots"
    snapshot_interval           = "24"
    snapshot_time               = "01:00"
    snapshot_number_retained    = "30"
    snapshot_tag                = "Backup"
}
```
