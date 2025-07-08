resource "aws_ebs_volume" "ebsvolume" {
  availability_zone     = var.availability_zone
  size                  = var.size
  type                  = var.type
  iops                  = var.type == "io1" || var.type == "io2" || var.type == "gp3" ? var.iops : null
  throughput            = var.type == "gp3"  ? var.throughput : null
  multi_attach_enabled  = var.type == "io1" || var.type == "io2" ? var.multi_attach_enabled : null
  snapshot_id           = var.snapshot_id
  encrypted             = var.volume_encryption
  kms_key_id            = var.kms_key_id
  final_snapshot        = var.final_snapshot
}
