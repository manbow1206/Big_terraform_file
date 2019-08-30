#HTTPSリスナーの定義
resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.example.arn
  #will khnown port for https
  port     = "443"
  protocol = "HTTPS"
  #8.7.tfで作成したSSL証明書を指定
  certificate_arn = aws_acm_certificate.example.arn
  #セキュリティポリシー　2019年3月現時点推奨
  ssl_policy = "ELBSecurityPolicy-2016-08"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "これは『HTTPS』です"
      status_code  = "200"
    }
  }
}
