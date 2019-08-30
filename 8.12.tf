#ターゲットグループの定義
resource "aws_lb_target_group" "example" {
  name   = "example"
  vpc_id = aws_vpc.example.id
  #ECSを使うので”ip”を指定
  target_type = "ip"
  #ipを指定したら
  port                 = 80
  protocol             = "HTTP"
  deregistration_delay = 300

  #ヘルスチェック
  health_check {
    #使用するパス
    path = "/"
    #正常判定を行うまでのヘルスチェック実行回数
    healthy_threshold = 5
    #異常判定を行うまでのヘルスチェック
    unhealthy_threshold = 2
    #タイムアウト時間
    timeout = 5
    #ヘルスチェックの実行回数
    interval = 30
    #正常判定を行うために使用するHTTPステータスコード
    matcher = 200
    #ヘルスチェックでしようするポート
    port = "traffic-port"
    #ヘルスチェックで使用するプロトコル
    protocol = "HTTP"
  }
  #依存関係の明示
  depends_on = [aws_lb.example]
}
