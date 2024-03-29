#kinesis Data Firehose 配信ストリームの定義
resource "aws_kinesis_firehose_delivery_stream" "example" {
  name = "example"
  destination = "s3"

  s3_configuration {
    role_arn = module.kinesis_data_firehose_role.iam_role_arn
    bucket_arn = aws_s3_bucket.cloudwatch_lohs.arn
    prefix = "ecs-scheduled-tasks/example/
  }
}
