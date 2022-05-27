provider "aws" {
 profile = "default"
 region = "us-east-1"
}
resource "aws_instance" "my-instance" {
 ami = var.myami
 instance_type = var.instance_type
}
terraform {
backend "s3" {
bucket = "sree-terraform-lab"
key = "path/to/my/key"
region = "us-east-1"
}
}
