#ログバケットの定義,ログローテーション
resource "aws_s3_bucket" "alb_log" {
  bucket = "alb-log-pragmatic-terraform-on-aws-zin"

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}
