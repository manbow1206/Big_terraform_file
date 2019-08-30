#ElasticCacheサブネットグループの定義
resource "aws_elasticecache_group" "example" {
  name       = "example"
  subnet_ids = [aws_subnet.private_0.id, aws_subnet.private_1.id]
}
