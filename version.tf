terraform {
  backend "s3" {
    bucket = "my-new-bucket-9986126"
    key    = "state/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "backend_locking"
  }
}