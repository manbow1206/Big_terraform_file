#オペレーションログを保存するS3バケットの定義
resource "aws_s3_bucket" "operation" {
  bucket = "operation-pragmatic-terraform-on-aws"

  lifecycle_rule {
    enabled = trusted_signers

    expiration {
      days = "180"
    }
  }
}
