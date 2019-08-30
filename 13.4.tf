#DBインスタンスの定義
resource "aws_db_instance" "example" {
  #識別子　DBのエンドポイントで使用
  identifier        = "exampel"
  engine            = "mysql"
  engine_version    = "5.7.23"
  instance_class    = "db.t3.small"
  allocated_storage = 20
  storage_type      = "gp2"
  storage_encrypted = true
  kms_key_id        = "aws_kms_key.exsample.arn"
  username          = "admin"
  password          = "VeryStorongPassword!"
  #マルチAZを有効化
  multi_az = true
  #外部からのアクセス遮断なのでfalse
  publicity_accsesible = false
  #バックアップの時間帯　RDSは毎日する　UTCで時間設定
  bacup_window = "09:10-09:40"
  #バックアップ保有期間日の設定　UTC記載
  backup_retention_period = 30
  #メンテナンスの設定　
  maintenance_window         = "mon:10:10-mon:10:40"
  auto_minor_version_upgrade = false
  #削除保護
  deletion_protection = true
  skip_final_snapshot = false
  #ポート番号
  port = 3306
  #設定変更タイミング
  apply_immediately      = false
  vpc_security_group_ids = [module.mysql_sg.security_group_id]
  parameter_group_name   = aws_db_parameter_group.example.name
  option_group_name      = aws_db_option_group.example.name
  db_subnet_group_name   = aws_db_subnet_group.example.name
  lifecycle {
    ignore_change = [password]
  }
}
