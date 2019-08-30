#elasticCache　レプリケーショングループの定義
resource "aws_elasticache_replication_group" "example" {
  #識別子 Redisのエンドポイントで使用する識別子
  replication_group_id = "example"
  #概要
  replication_group_description = "Cluster Disabled"
  #「memcached」か「redis」
  engine         = "redis"
  engine_version = "5.0.3"
  #ノード数を指定　プライマリノードとレプリカノードの合計値
  number_cache_clusters = 3
  node_type             = "cache.m3.medium"
  #ElastiCacheのsnapshotの時間帯を指定　毎日実行される
  snapshot_window          = "09:10-10:10"
  snapshot_retention_limit = 7
  #メンテナンスの指定
  maintenance_window = "mon:10:40-mon:11:40"
  #自動フェイルオーバー?
  automatic_failover_enabled = true
  port                       = 6379
  #設定変更タイミング?
  apply_immediately    = false
  security_group_ids   = [module.redis_sg.security_group_id]
  parameter_group_name = aws_elasticache_parameter_group.example.name
  subnet_group_name    = aws_elasticache_subnet_group.example.name
}
