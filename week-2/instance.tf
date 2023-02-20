resource "aws_instance" "app_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.ec2_trafic.id]
  key_name               = var.key_name
  iam_instance_profile   = aws_iam_instance_profile.S3_Role.name

  user_data = <<EOF
#!/bin/bash
aws s3 cp s3://${aws_s3_bucket_acl.s3_bucket.id}/small.txt /var/small.txt
EOF

  tags = {
    Name = var.instance_name
  }
}