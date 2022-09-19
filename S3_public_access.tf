terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

#Provider profile and region in which all the resources will create
provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

#Resource to create s3 bucket
resource "aws_s3_bucket" "demo-bucket" {
  bucket = "ck-demo-bucket"

  tags = {
    Name                 = "S3Bucket"
    Name                 = "S3Bucket"
    git_commit           = "c3b0a91ec421fc4ca269789dccc39ddcb00fc797"
    git_file             = "S3_public_access.tf"
    git_last_modified_at = "2022-09-19 10:00:59"
    git_last_modified_by = "112870361+rishav-19@users.noreply.github.com"
    git_modifiers        = "112870361+rishav-19"
    git_org              = "rishav-19"
    git_repo             = "cfngoat"
    yor_trace            = "1108e08d-377e-46cb-a161-463eede57556"
  }
}

resource "aws_s3_bucket_public_access_block" "demo_public_block" {
  bucket = aws_s3_bucket.demo-bucket.bucket

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}