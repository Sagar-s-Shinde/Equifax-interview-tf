terraform {
  backend "s3" {
    bucket = "equifax-tf-state"
    key    = "equifaxtf/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "dynamodb-lock-table-equifax"
  }
}