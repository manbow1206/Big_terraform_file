#パブリックバケットの定義
resource "aws_s3_bucket" "public" {
  bucket = "public-pragmatic-terraform-on-aws-zin"
  acl    = "public-read"

  #CORS(Cross-Origin Resource Sharing)
  cors_rule {
    allowed_origins = ["https://example.com"]
    allowed_methods = ["GET"]
    allowed_headers = ["*"]
    max_age_seconds = 3000
  }
}
