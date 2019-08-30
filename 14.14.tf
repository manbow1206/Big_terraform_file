#Github Webhookの定義
resource "github_repository_webhook" "example" {
  repository = "your-repository"
  #固定で「web」
  name = "web"

  #通知設定　通知先となるcodepipelineのURLや、HMAC用の秘密鍵を設定
  configuration {
    url          = aws_codepipeline_webhook.example.url
    secret       = "VeryRandomStringMoreThan10Byte!"
    content_type = "json"
    insecure_ssl = false
  }

  #トリガーとなるイベント設定
  events = ["push"]
}
