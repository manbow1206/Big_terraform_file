#VPCの定義
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  #名前解決
  enable_dns_support = true
  #VPC内のリソースにパブリックDNSホスト名を自動で割り当て
  enable_dns_hostnames = true

  tags = {
    Name = "example"
  }
}
