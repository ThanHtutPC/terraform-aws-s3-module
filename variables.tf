variable "bucket_name" {
    type = string
    description = "The name of the s3 buckets"
}

variable "acl" {
    type = string
    description = "The access control list for the buckets"
    default = "private"
}