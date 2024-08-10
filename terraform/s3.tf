resource "aws_s3_bucket" "landing_data" {
  bucket = "landing-zone-trio"
  acl    = "private"
  
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "processing_data" {
  bucket = "processing-zone-trio"
  acl    = "private"
  
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "curated_data" {
  bucket = "curated-zone-trio"
  acl    = "private"
  
  versioning {
    enabled = true
  }
}
