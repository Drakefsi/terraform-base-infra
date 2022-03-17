variable "bucket_name" {}

variable "policy" {
  type    = string
  default = null
}

variable "policy_enable" {
  default = "enable"
}

variable "acl" {
  default = "public-read"
}
