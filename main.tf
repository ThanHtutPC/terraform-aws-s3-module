resource "aws_s3_bucket" "name" {
    bucket = var.bucket_name
    acl = var.acl
}

data "aws_ami" "name" {
    most_recent = true
    owners      = ["amazon"]
    filter {
        name   = "name"
        values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }
}

module "ec2_instance" {
    source = "./submodules/ec2-instance"
    ami = data.aws_ami.name.id
}