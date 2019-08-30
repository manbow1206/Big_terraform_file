#ホストゾーンのデータソースの参照
#コンソールでドメイン取得したらここで参照する
data "aws_route53_zone" "example" {
  name = "example.com"
}
