#DBインスタンスのセキュリティグループの定義
module "mysql_sg" {
  surce       = "./security_group"
  name        = "mysql-sg"
  vpc_id      = aws_vpc.example.id
  port        = 3306
  cidr_blocks = [aws_vpc.example.cidr_block]

}
