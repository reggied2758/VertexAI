resource "aws_s3_bucket" "test" {
  bucket = "my-iac-security-test-bucket"

  versioning {
    enabled = false
  }
}