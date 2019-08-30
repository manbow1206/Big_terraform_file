#ElasticCache パラメータグループの定義
resource "aws_elasticcache_parameter_group" "example" {
  name   = "example"
  family = "redis5.0"

  parameter {
    name  = "cluster-enabled"
    value = "no"
  }
}
