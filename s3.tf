terraform {
  backend "s3" {
    bucket = "cloudstate-storage"
    key    = "Terraform/backend"
    region = "us-east-2"

  }
}