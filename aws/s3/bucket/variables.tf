variable "bucket_name" {}

variable "policy" {
  type    = string
  default = null
}

variable "enable" {
  default = "enable"
}

variable "acl" {
  default = "public-read"
}
