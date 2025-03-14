resource "aws_instance" "name" {
    ami = var.ami 
    instance_type = "t2.micro"
    tags = {
      Name = "update-server"
    }
}