module "s3_bucket" {
    source = "../terraform-aws-s3-module"
    bucket_name = "terraform-module-s3-demo"
    acl = "private"
}

output "bucket_arn" {
    value = module.s3_bucket.bucket_arn
}