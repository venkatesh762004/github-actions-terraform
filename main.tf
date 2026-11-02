
resource "aws_s3_bucket" "demo" {
  bucket = "venkatesh-github-actions-demo-2026"

  tags = {
    Name        = "GitHub-Actions-Terraform"
    Environment = "Practice"
  }
}
