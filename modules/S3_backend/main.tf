resource "aws_s3_bucket" "backend_bucket" {
  bucket = "var.bucket_name"
}

resource "aws_s3_bucket_versioning" "versioning_s3_backend" {
  bucket = aws_s3_bucket.backend_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "backend_S3_encrytion" {
  bucket = aws_s3_bucket.backend_bucket.id

  rule {
    apply_server_side_encryption_by_default {
            sse_algorithm     = "var.sse_algorithm"
    }
  }
  depends_on = [ 
    aws_s3_bucket_versioning.versioning_s3_backend 
    ]
}

