resource "aws_s3_bucket" "bucket" {
  bucket = local.app_url

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}
