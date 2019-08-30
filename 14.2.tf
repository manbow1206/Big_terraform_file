#ECRライフサイクルポリシーの定義
resource "aws_lifecycle_policy" "example" {
  repository = aws_ecr_repository.example.name

  policy = <<EOF
  {
     "rules": [
       "rulePriority":1,
       "description": "Keep last 30 release tagged images",
       "section": {
         "tagStanding": "tagged",
         "tagPrefixlist": ["releace"],
         "countType": "imageCountMoreThan",
         "countNumber": 30
       },
       "action": {
         "type": "example"
       }
     }
   ]
  }
EOF
}
