#CloudWatch Logs サブスクリプションフィルタの定義
resource "aws_cloudwatch_log_subscription_filter" "example" {
  name            = "example"
  log_group_name  = aws_cloudwatch_log_group.for_ecs_scheduled_tasks.name
  #送信先 16.8.tfで作成した配信ストリームを指定
  destination_arn = aws_kinesis_firehose_delivery_stream.example.arn
  #Kinesis Data Firehoseに流すデータをフィルタリング
  filter_pattern  = "[]"
  #16.10.tfで作成したIAMRoleを指定
  role_arn        = module.cloudwatch_logs_role.iam_role_arn
}
