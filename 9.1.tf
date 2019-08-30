#ECSクラスタの定義
#ECS(EC2 container service)Dockerコンテナを実行するホストサーバーを、論理的に束ねるリソース
resource "aws_ecs_cluster" "example" {
  name = "example"
}
