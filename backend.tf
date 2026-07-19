terraform {
  backend "s3" {
    bucket  = "remote-state-bucket-reggie"
    key     = "prd/terraform.tfstate"
    region  = "eu-west-2"
    encrypt = true
  }
}