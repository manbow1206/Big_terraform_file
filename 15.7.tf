#オペレーションログを保存するCloudWatch Logsの定義
resource "aws_cloudwatch_log_group" "operation" {
  name              = "/operation"
  retention_in_days = 180
}
