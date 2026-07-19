provider "aws" {

  region = "eu-west-2"
}
terraform {
  backend "s3" {
    # Replace with your globally unique bucket name
    bucket  = "terraformstatefolder"
    key     = "prd/terraform.tfstate"
    region  = "eu-west-2"
    encrypt = true
  }
}
