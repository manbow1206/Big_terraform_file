# #プライベートルートの定義
# resource "aws_route" "private" {
#   route_table_id = aws_route_table.private.id
#   #ここが間違いやすい。。らしい「gateway_id」
#   nat_gateway_id         = aws_nat_gateway.example.id
#   destination_cidr_block = "0.0.0.0/0"
# }
