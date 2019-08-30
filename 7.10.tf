# #NATの定義
# resource "aws_nat_gateway" "example" {
#   allocation_id = aws_eip.nat_gateway.id
#   #プライベートサブネット用だが置く場所はパブリックサブネットにNATを置く
#   subnet_id  = aws_subnet.public.id
#   depends_on = [aws_internet_gateway.example]
# }
