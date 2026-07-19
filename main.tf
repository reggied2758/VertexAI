provider "aws" {

  region = "eu-west-2"
}

resource "aws_s3_bucket" "terraformstatefolder" {
  bucket = "terraformstatefolder"
}
 
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformstatefolder"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}