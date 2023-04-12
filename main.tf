resource "aws_ebs_volume" "ebsvolume" {
  availability_zone = var.availability_zone
  size              = var.size
  type              = var.type
  encrypted         = true
  final_snapshot    = true
}


lifecycle {

  ignore_changes = [
    # Ignore changes to tags, e.g. because a management agent

    # updates these based on some ruleset managed elsewhere.
    tags,
  ]
}
