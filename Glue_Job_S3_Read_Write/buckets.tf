# S3 Bucket for Processed Data
resource "aws_s3_bucket" "dc-source-data-bucket" {
  bucket = "dc-source-data-bucket"
}

resource "aws_s3_bucket_object" "data-object" {
  bucket = aws_s3_bucket.dc-source-data-bucket.bucket
  key    = "organizations.csv"
  source = "<File Path>"
}

# S3 Bucket for Processed Data
resource "aws_s3_bucket" "dc-target-data-bucket" {
  bucket = "dc-target-data-bucket"
}

###############################################
# S3 Bucket for Processed Data
resource "aws_s3_bucket" "dc-poc-code-bucket" {
  bucket = "dc-poc-code-bucket"
}

resource "aws_s3_bucket_object" "code-data-object" {
  bucket = aws_s3_bucket.dc-poc-code-bucket.bucket
  key    = "script.py"
  source = "<File Path>"
}
