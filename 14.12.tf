#CodePipeline Webhokの定義
resource "aws_codepipeline_webhook" "example" {
  name = "example"
  #webhokを受け取ったら起動するパイプラインを設定
  target_pipeline = aws_codepipeline.example.name
  #最初に実行するアクション
  target_action  = "Source"
  authentication = "GITHUB_HMAC"

  #認証　GithubのHMACによるメッセージ認証
  authentication_configuration {
    #20バイト以上の秘密鍵を指定
    secret_token = "VeryRandomStringMoreThan20Byte!"
  }

  #CodePipelineの起動条件
  filter {
    json_path    = "$.ref"
    match_equals = "refs/heads/{Branch}"
  }
}
