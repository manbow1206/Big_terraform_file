#DBオプショングループの定義
resource "aws_db_option_group" "example" {
  name                 = "example"
  engine_name          = "mysql"
  major_engine_version = "5.7"
  #追加対象を追加
  option {
    option_name = "MARIADB_AUDIT_PLUGIN"
  }
}
