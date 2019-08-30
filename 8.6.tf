#ALBのDNSレコードの定義
resource "aws_route53_record" "example" {
  zone_id = data.aws_route53_zone.example.zone_id
  name    = data.aws_route53_zone.example.name
  #CNAMEなど指定できる今回はAレコードを指定
  type = "A"
  #ALIASレコードの指定？
  alias {
    name                   = aws_lb.example.dns_name
    zone_id                = aws_lb.example.zone_id
    evaluate_target_health = true
  }
}
