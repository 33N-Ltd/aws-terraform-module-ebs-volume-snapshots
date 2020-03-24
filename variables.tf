variable "snapshot_interval" {
  description = "Interval in hours when snapshots should occur"
  type        = string
  default     = "24"
}

variable "snapshot_time" {
  description = "Time when daily snapshots should occur"
  type        = string
  default     = "01:00"
}

variable "snapshot_number_retained" {
  description = "Numnber of snapshots to retain"
  type        = string
  default     = "30"
}

variable "snapshot_tag" {
  description = "The tag to key off when selecting backup targets"
  type        = string
  default     = "Backup"
}

