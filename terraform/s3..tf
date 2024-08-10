resource "aws_s3_bucket" "landing_data_lake" {
  bucket = "landing-zone-trio"
  acl    = "private"
  
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "processing_data_lake" {
  bucket = "processing-zone-trio"
  acl    = "private"
  
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "curated_data_lake" {
  bucket = "curated-zone-trio"
  acl    = "private"
  
  versioning {
    enabled = true
  }
}
