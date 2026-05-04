terraform {
  backend "s3" {
    region = "eu-north-1"
    key    = "aws-vpc-apr26/terraform.tfstate"
    bucket = "mtc-in-terraform-bucket-650251713601-eu-north-1-an"
  }
}