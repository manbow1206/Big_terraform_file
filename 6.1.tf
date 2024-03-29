#プライベートバケットの作成
resource "aws_s3_bucket" "private" {
  #バケット名
  bucket = "private-pragmatic-terraform-on-aws-zin"
  #バージョニング
  versioning {
    enabled = true
  }
  #暗号化
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
