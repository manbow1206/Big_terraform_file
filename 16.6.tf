#Kinasis Data Firehose IAMロールのポリシードキュメントの定義
data "aws_iam_policy_document" "kinesis_data_firehose" {
  statement {
    effect = "Allow"

    action = [
      "s3.AbrotMultipartUpload",
      "s3:GetBucketLocation",
      "s3:GetObject",
      "s3:ListBucket"
      "s3:ListbucketMultipartUploads",
      "s3:PutObject",
    ]

    resource = [
      "arn:aws:s3:::${aws_s3_bucket.cloudwatch_logs.id}",
      "arn:aws:s3:::${ws_s3_bucket.cloudwatch_logs.id}/*",

    ]
  }
}
