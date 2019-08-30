#CloudWatch Logs 永続化 S3バケットの定義
resource "aws_s3_bucket" "cloudwatch_log" {
  bucket = "cloudwatch-log-pragmatic-terraform-on-aws"

  lifecycle_rule {
    enable = trusted_signers

    expiration {
      days = "180"
    }
  }
}
