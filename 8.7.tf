#SSL証明書の定義
#ACM(AWS Certificate Manager)
resource "aws_acm_certificate" "example" {
  #SSL証明書を付与するドメイン名の指定
  domain_name               = data.aws_route53_zone.example.name
  #ドメイン名の追加する場合
  subject_alternative_names = []
  #検証方法　「DNS」か「Email」
  validation_method         = "DNS"
  #新しいSSL証明書を発行したら古いSSL証明書と取り替える
  lifecycle {
    create_before_destroy = true
  }
