#ホストゾーンのリソースの新しく定義
resource "aws_route53_zone" "test_example" {
  name = "test.example.com"
}
