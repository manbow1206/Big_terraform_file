# #プライベートルートテーブルの定義
# resource "aws_route_table" "private" {
#   vpc_id = aws_vpc.example.id
# }
# #そしてその関連付け
# resource "aws_route_table_association" "private" {
#   subnet_id      = aws_subnet.private.id
#   route_table_id = aws_route_table.private.id
# }
