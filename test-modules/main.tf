module "s3_bucket" {
    source = "../terraform_modules_demo"
    bucket_name = "terraform-module-s3-demo-1333777"
    acl = "private"
}

output "bucket_arn" {
    value = module.s3_bucket.bucket_arn
}
