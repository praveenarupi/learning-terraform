terraform {
  backend "s3" {
    bucket = "terraform-p66"
    key    = "modules/sample1/terraform.tfstate"
    region = "us-east-1"
  }
}