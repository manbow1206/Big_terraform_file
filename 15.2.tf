#オペレーションサーバ用 EC2インスタンス向けIAMロールの定義
module "ec2_for_ssm_role" {
  source     = "./iam_role"
  name       = "ec2-forssm"
  identifier = "ec2.amazonaws.com"
  policy     = data.aws_iam_policy_document.ec2_for_ssm.json
}
