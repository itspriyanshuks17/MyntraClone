provider "aws" {
  region = "us-east-1"
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "aws_s3_bucket" "website_bucket" {
  bucket = "myntra-clone-pks-17"
}

resource "aws_s3_bucket_website_configuration" "website_config" {
  bucket = aws_s3_bucket.website_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.website_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "public_policy" {
  bucket = aws_s3_bucket.website_bucket.id
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid    = "PublicReadGetObject",
        Effect = "Allow",
        Principal = "*",
        Action = "s3:GetObject",
        Resource = "${aws_s3_bucket.website_bucket.arn}/*"
      }
    ]
  })
}

locals {
  content_types = {
    "html" = "text/html"
    "css"  = "text/css" 
    "js"   = "application/javascript"
    "jpg"  = "image/jpeg"
    "jpeg" = "image/jpeg"
    "png"  = "image/png"
    "gif"  = "image/gif"
    "svg"  = "image/svg+xml"
    "webp" = "image/webp"
  }

  excluded_files = [
    "terraform.tfstate",
    "terraform.tfstate.backup",
    ".terraform.lock.hcl", 
    ".terraform/**",
    ".git/**",
    ".gitignore",
    "main.tf"
  ]

  website_files = [for f in fileset(".", "**/*.*") : f 
    if !contains(local.excluded_files, f) &&
    !startswith(f, ".terraform/") &&
    !startswith(f, ".git/")
  ]
}

resource "aws_s3_object" "website_files" {
  for_each = toset(local.website_files)

  bucket = aws_s3_bucket.website_bucket.id
  key    = each.value
  source = each.value
  etag   = filemd5(each.value)
  content_type = lookup(
    local.content_types,
    split(".", each.value)[length(split(".", each.value)) - 1],
    "application/octet-stream"
  )
}
