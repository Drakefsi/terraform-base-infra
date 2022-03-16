resource "aws_s3_bucket" "bucket" {
  bucket        = var.bucket_name
  force_destroy = true

  website {
    index_document = var.index_document
    error_document = var.error_document
  }


}

resource "aws_s3_bucket_cors_configuration" "bucket" {
  bucket = aws_s3_bucket.bucket.bucket

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
    expose_headers  = ["Authorization"]
    max_age_seconds = 3000
  }
}

resource "aws_s3_bucket_policy" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  policy = <<EOF
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": {
                "AWS": "*"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${var.bucket_name}/*"
        }
    ]
}
EOF
}

resource "aws_s3_bucket_acl" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "public-read"
}