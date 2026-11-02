
resource "aws_s3_bucket" "demo" {
  bucket = "venkat-terraform-demo-bucket"

  tags = {
    Name        = "GitHub-Actions-Terraform"
    Environment = "Practice"
  }
}
