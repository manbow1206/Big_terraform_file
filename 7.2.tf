# #VPC内のパブリックサブネットの定義
# resource "aws_subnet" "public" {
#   vpc_id     = aws_vpc.example.id
#   cidr_block = "10.0.0.0/24"
#   #自動で起動したパブリックIPアドレスを割り当ててくれる
#   map_public_ip_on_launch = true
#   availability_zone       = "ap-northeast-1a"
# }

#マルチAZ　パブリックサブネットを２つ定義
resource "aws_subnet" "public_0" {
  vpc_id                  = aws_vpc.example.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.example.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true
}
