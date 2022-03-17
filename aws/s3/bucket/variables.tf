variable "bucket_name" {}

variable "policy" {
  type    = string
  default = null
}

variable "acl" {
  default = "public-read"
}
