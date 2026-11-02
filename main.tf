
resource "aws_s3_bucket" "demo" {
  bucket = "venkat-terraform-demo-bucket-1111"

  tags = {
    Name        = "GitHub-Actions-Terraform"
    Environment = "Practice"
  }
}
