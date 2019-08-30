#データベースのユーザ名の定義
resource "aws_ssm_parameter" "db_username" {
  name        = "/db/username"
  value       = "root"
  type        = "String"
  description = "データベースの接続ユーザ名"
}
