#カスタマーマスターキーの定義
resource "aws_kms_key" {
  #使用用途
  description = "Example Customer Master Key"
  #ローテション前に複合したデータの複合が可能に設定
  enable_key_rotation = true
  #falseにするとカスタマーマスターキーを無効化できる
  is_enabled = true
  #削除待機期間 デフォは30日
  deletion_window_in_days = 30
}
