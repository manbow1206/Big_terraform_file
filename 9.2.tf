#タスク定義
#タスクとはコンテナ実行単位の事
#オブジェクト指向で例えると「タスク定義」はクラス,「タスク」はインスタンス
resource "aws_ecs_task_definition" "example" {
  family = "example"
  #256の場合memoryは512,1024,2048から選択
  cpu    = "256"
  memory = "512"
  #FARGATEの場合はawsvpcを指定
  network_mode = "awsvpc"
  #起動タイプ
  requires_compatibilities = ["FARGATE"]
  container_definitions    = file("./container_definitions.json")
}
