#CloudWatch Logs IAM ロールのポリシードキュメントの定義
data "aws_iam_policy_document" "cloudwatch_logs" {
  statement {
    effect   = "Allow"
    action   = ["firehose:*"]
    resource = ["arn:aws:firehose:ap-northeast-1:*:*"]
  }

  statement {
    effect   = "Allow"
    actions  = ["iam:PassRole"]
    resource = ["arn:aws:iam::*role/cloudwatch-logs"]

  }
}
