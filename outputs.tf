output "bucket_name" {
  value = aws_s3_bucket.demo.bucket
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet1_id" {
  value = aws_subnet.subnet1.id
}

output "subnet2_id" {
  value = aws_subnet.subnet2.id
}

output "subnet3_id" {
  value = aws_subnet.subnet3.id
}

output "subnet4_id" {
  value = aws_subnet.subnet4.id
}
output "security_group_id" {
  value = aws_security_group.allow_ssh.id
}
output "security_group_name" {
  value = aws_security_group.allow_ssh.name
}
output "aws_instance_id" {
  value = aws_instance.demo.id
}
output "aws_instance_public_ip" {
  value = aws_instance.demo.public_ip
}
output "aws_instance_private_ip" {
  value = aws_instance.demo.private_ip
}
output "aws_rds_instance_id" {
  value = aws_db_instance.demo.id
}
output "aws_rds_instance_endpoint" {
  value = aws_db_instance.demo.endpoint
}