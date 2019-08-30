#リスナールールの定義

resource "aws_lb_listener_rule" "example" {
  listener_arn = aws_lb_listener.https.arn
  #優先順位 低い数値が高い
  priority = 100
  #フォワード先のターゲットグループを指定
  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.example.arn
  }

  condition {
    field  = "path-pattern"
    values = ["/*"]
  }
}
