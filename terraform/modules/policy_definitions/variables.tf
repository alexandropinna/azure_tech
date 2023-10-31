// This file defines the variables required by the Policy Definitions module.

variable "autopatching_policy_name" {
  description = "The name of the Auto Patching policy."
  type        = string
}

variable "policy_type" {
  description = "The type of policy."
  type        = string
}

variable "mode" {
  description = "The mode of the policy."
  type        = string
}

variable "autopatching_policy_display_name" {
  description = "The display name of the Auto Patching policy."
  type        = string
}

variable "autopatching_policy_rule" {
  description = "The rule of the Auto Patching policy."
  type        = string
}

variable "defender_policy_name" {
  description = "The name of the Defender policy."
  type        = string
}

variable "defender_policy_display_name" {
  description = "The display name of the Defender policy."
  type        = string
}

variable "defender_policy_rule" {
  description = "The rule of the Defender policy."
  type        = string
}
