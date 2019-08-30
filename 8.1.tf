#アプリケーションロードバランサの定義
resource "aws_lb" "example" {
  name               = "example"
  load_balancer_type = "application"
  #インターネット向けなのかVPC向けかを設定 IN向け設定
  internal     = false
  idle_timeout = 60
  #削除保護
  enable_deletion_protection = false

  subnets = [
    aws_subnet.public_0.id,
    aws_subnet.public_1.id,
  ]

  access_logs {
    bucket  = aws_s3_bucket.alb_log.id
    enabled = true
  }

  security_groups = [
    module.http_sg.security_group_id,
    module.https_sg.security_group_id,
    module.http_redirect_sg.security_group_id,
  ]
}

output "alb_dns_name" {
  value = aws_lb.example.dns_name
}
