#リモートのバックエンドの定義
terraform {
  backend "s3" {
    bucket = "tfstate-pragmatic-terraform-on-aws"
    key = "example/terrafomr.tfstate"
    region = "ap-northeast-1"
  }
}
