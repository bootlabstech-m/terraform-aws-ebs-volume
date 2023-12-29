variable "availability_zone" {
  description = "availability_zone"
  type        = string
}
variable "size" {
  description = "size"
  type        = string
}
variable "type" {
  description = "type"
  type        = string
}
variable "iops" {
  description = "IOPS of the volume"
  type        = string
}
variable "throughput" {
  description = "throughput of the volume"
  type        = string
}

variable "multi_attach_enabled" {
  description = "multi_attach_enable"
  type        = bool
  default     = true
}
variable "snapshot_id" {
  description = "snapshot_id of the volume"
  type        = string
}
variable "kms_key_id" {
  description = "kms_key_id of the volume"
  type        = string
}
variable "volume_encryption" {
  description = "volume_encryption"
  type        = bool
  default     = true
}
variable "final_snapshot" {
  description = "final_snapshot"
  type        = string
  default     = true
}
variable "region" {
  description = "region"
  type        = string
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type = string
}
