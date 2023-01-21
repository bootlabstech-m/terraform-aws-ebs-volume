variable "availability_zone" {
  description = "value"
  type        = string
}
variable "size" {
  description = "value"
  type        = string
}
variable "type" {
  description = "value"
  type        = string
}
variable "encrypted" {
  description = "value"
  type        = bool
  default     = true
}
variable "final_snapshot" {
  description = "value"
  type        = string
  default     = true
}
variable "region" {
  description = "value"
  type        = string
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type = string
}