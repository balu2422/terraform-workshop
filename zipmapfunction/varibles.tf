variable "tag_keys" {
  description = "List of keys for the security group tags"
  type        = list(string)
  default     = ["Environment", "Project", "Owner"]  # Default tag keys
}

variable "tag_values" {
  description = "List of values corresponding to the tag keys"
  type        = list(string)
  default     = ["Development", "terraform-zipmaps", "Balu"]  # Default tag values
}

