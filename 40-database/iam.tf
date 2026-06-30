resource "aws_iam_role" "mysql" {
  name = "${local.common_name}-mysql" # roboshop-dev-mysql"

  # This is the trust policy, means we can attach this role to EC2 instance

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
        {
            Action = "sts:AssumeRole"
            Effect = "Allow"
            Sid = ""
            Principal = {
                Service = "ec2.amazonaws.com"
            }
        },
    ]
  })
  tags = merge(
    local.common_tags,
    {
        Name = "${local.common_name}-mysql"
    }
  )
}

resource "aws_iam_policy" "mysql" {
  name = "${local.common_name}-mysql"
  policy = file("mysql-iam-policy.json")
  description = "Policy to read MySQL SSM paramter to attach to mysql instance"
}

resource "aws_iam_role_policy_attachment" "mysql" {
    role = aws_iam_role.mysql.name
    policy_arn = aws_iam_role.mysql.name
}

resource "aws_iam_instance_profile" "mysql" {
  role = aws_iam_role.mysql
  name = "${local.common_name}-mysql"
}