variable "bucket_name" {}

variable "policy" {
  type    = string
  default = null
}

variable "policy_enable" {
  default = "true"
}

variable "acl" {
  default = "public-read"
}
