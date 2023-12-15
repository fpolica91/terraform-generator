

resource "aws_s3_bucket" "bucket_1" {
  bucket = "my-bucket-1"
       tags = {
            "Environment" = "Dev"
            "Project" = "ProjectX"
          }
   }

resource "aws_s3_bucket_ownership_controls" "ownership_controls" {
  bucket = aws_s3_bucket.bucket_1.bucket
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}



resource "aws_s3_bucket" "bucket_2" {
  bucket = "my-bucket-2"
       tags = {
            "Environment" = "Prod"
            "Project" = "ProjectY"
          }
   }

resource "aws_s3_bucket_ownership_controls" "ownership_controls" {
  bucket = aws_s3_bucket.bucket_2.bucket
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}


