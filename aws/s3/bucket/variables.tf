variable "bucket_name" {}

variable "policy" {
  type    = string
  default = null
}

variable "enable_policy" {
  default = 1
}

variable "acl" {
  default = "public-read"
}
