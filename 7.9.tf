#EIPの定義
resource "aws_eip" "nat_gateway" {
  vpc = true
  #暗黙の依存関係の了解
  depends_on = [aws_internet_gateway.example]
}
