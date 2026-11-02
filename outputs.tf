
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

output "ec2_instance_1_id" {
  value = aws_instance.example.id
}

output "ec2_instance_1_public_ip" {
  value = aws_instance.example.public_ip
}

output "ec2_instance_2_id" {
  value = aws_instance.example2.id
}

output "rds_instance_id" {
  value = aws_db_instance.example.id
}

output "rds_endpoint" {
  value = aws_db_instance.example.endpoint
}
