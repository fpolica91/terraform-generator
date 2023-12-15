

resource "aws_s3_bucket" "bucket_1" {
  bucket = "my-bucket-1"
       tags = {
            "Environment" = "Dev"
            "Project" = "ProjectX"
          }
   }

resource "aws_s3_bucket_ownership_controls" "ownership_controls_1" {
  bucket = aws_s3_bucket.bucket_1.bucket
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "acl_bucket_1" {
 
  depends_on = [aws_s3_bucket_ownership_controls.ownership_controls_1, aws_s3_bucket_public_access_block.public_access_block_1]

  bucket = aws_s3_bucket.bucket_1.bucket
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "public_access_block_1" {
  bucket                  = aws_s3_bucket.bucket_1.bucket
  block_public_acls       = "True"
  block_public_policy     = "True"
  ignore_public_acls      = "True"
  restrict_public_buckets = "True"
}






output "bucket_names_1" {
  description = "Names of the created S3 buckets"
  value       = bucket_1.bucket
}

output "bucket_names_1" {
  description = "ARNs of the created S3 buckets"
  value       = bucket_1.arn
}


resource "aws_s3_bucket" "bucket_2" {
  bucket = "my-bucket-2"
       tags = {
            "Environment" = "Prod"
            "Project" = "ProjectY"
          }
   }

resource "aws_s3_bucket_ownership_controls" "ownership_controls_2" {
  bucket = aws_s3_bucket.bucket_2.bucket
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "acl_bucket_2" {
 
  depends_on = [aws_s3_bucket_ownership_controls.ownership_controls_2, aws_s3_bucket_public_access_block.public_access_block_2]

  bucket = aws_s3_bucket.bucket_2.bucket
  acl    = "public-read"
}

resource "aws_s3_bucket_public_access_block" "public_access_block_2" {
  bucket                  = aws_s3_bucket.bucket_2.bucket
  block_public_acls       = "False"
  block_public_policy     = "False"
  ignore_public_acls      = "False"
  restrict_public_buckets = "False"
}


resource "aws_s3_bucket_website_configuration" "website_config_2" {
  bucket = aws_s3_bucket.bucket_2.bucket
  index_document {
          suffix = "index.html"
        }
  
    error_document {
                 key = "error.html"
            }
}




output "bucket_names_2" {
  description = "Names of the created S3 buckets"
  value       = bucket_2.bucket
}

output "bucket_names_2" {
  description = "ARNs of the created S3 buckets"
  value       = bucket_2.arn
}

