
resource "aws_codebuild_project" "example" {
  name = "example"
  #14.4.tfのモジュール参照
  service_role = module.codebuild_role.iam_role_arn

  #sourceとartifactsを「CODEPIPELINE」と指定するとCodePipelineと連携できます
  source {
    type = "CODEPIPELINE"
  }

  artifacts {
    type = "CODEPIPELINE"
  }

  enviroment {
    type         = "LINUX_CONTAINER"
    compute_type = "BUILE_GENERAL1_SMALL"
    image        = "aws/codebuild/ubuntu-base:14.04"
    #ビルド環境　dockerコマンドを使う為にtrue
    privileged_mode = true
  }
}
