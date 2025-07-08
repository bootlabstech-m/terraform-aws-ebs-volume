variable "availability_zone" {
  description = "The Availability Zone in which to create the EBS volume (e.g., ap-south-1a)."
  type        = string
}

variable "size" {
  description = "The size of the volume in GiBs. Must be at least 1 GiB."
  type        = string
}

variable "type" {
  description = "The volume type. Valid values are 'standard' | 'gp2' | 'gp3' | 'io1' | 'io2' | 'sc1' | 'st1'."
  type        = string
}

variable "iops" {
  description = "The number of IOPS (input/output operations per second) for the volume. Required for 'io1', 'io2', and 'gp3' types."
  type        = string
}

variable "throughput" {
  description = "The throughput in MiB/s for a gp3 volume. Applicable only for type 'gp3'."
  type        = string
}

variable "multi_attach_enabled" {
  description = "Whether to enable Multi-Attach for the volume. Only supported for 'io1' and 'io2' volumes."
  type        = bool
  default     = true
}

variable "snapshot_id" {
  description = "The ID of the snapshot from which to create the volume. Leave empty if creating a new volume."
  type        = string
}

variable "kms_key_id" {
  description = "The ARN of the KMS key to use for encryption. Required if encryption is enabled and a custom key is used."
  type        = string
}

variable "volume_encryption" {
  description = "Specifies whether the EBS volume should be encrypted."
  type        = bool
  default     = true
}

variable "final_snapshot" {
  description = "Determines whether to create a final snapshot before volume deletion. Pass 'true' or 'false'."
  type        = string
  default     = true
}

variable "region" {
  description = "The AWS region where the volume should be created (e.g., ap-south-1)."
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role used for provisioning the EBS volume."
  type        = string
}