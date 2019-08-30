#DBパラメーターグループの定義
resource "aws_db_parameter_group" "example" {
  name = "example"
  #エンジン名とバージョンを合わせて書く
  family = "mysql5.7"

  #設定のパラメーター名と値のペアを設定する
  parameter {
    name = "character_set_database"
    #文字コードはutf8mb4
    value = "utf8mb4"
  }

  parameter {
    name  = "character_set_server"
    value = "utf8mb4"
  }
}
