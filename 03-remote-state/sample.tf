terraform {
  backend "s3" {
    bucket = "terraform-p66"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "web" {
  ami    = "ami-01982e3c510a4c471"
  instance_type = "t3.micro"
}