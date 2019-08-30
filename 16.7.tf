#kinasis Data Firehose IAMロールの定義
module "kinesis_data_fire_hose_role" {
  source     = "./iam_role"
  name       = "kinasis-data-firehose"
  identifier = "firehose.amazonaws.com"
  policy     = data.aws_iam_policy_document.kinesis_data_firehose.json
}
