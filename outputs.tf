output "vpc_id" {
  value = aws_vpc.main.id
}

output "ec2_instance_id" {
  value = aws_instance.web.id
}

output "iam_username" {
  value = aws_iam_user.developer.name
}