#HTTPリスナーの定義
#リスナー　
# ユーザーが設定したプロトコルとポートを使用してクライアントからの接続リクエストを確認し、
# ユーザーが定義したルールに基づいて 1 つ以上のターゲットグループにリクエストを転送します。
resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.example.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "これは『HTTP』です"
      status_code  = "200"
    }
  }
}
