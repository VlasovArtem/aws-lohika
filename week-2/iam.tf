resource "aws_iam_role" "S3_Role" {
  name               = var.iam_role_name
  assume_role_policy = <<EOF
    {
        "Version": "2012-10-17",
        "Statement": [
        {
                "Effect": "Allow",
                "Principal": {
                    "Service": "ec2.amazonaws.com"
                },
                "Action": "sts:AssumeRole"
            }
        ]
    }
    EOF
}

resource "aws_iam_instance_profile" "S3_Role" {
  name = var.iam_role_name
  role = aws_iam_role.S3_Role.name
}

resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
  for_each = toset([
    "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  ])
  role       = aws_iam_role.S3_Role.name
  policy_arn = each.value
}