resource "aws_instance" "web" {
  for_each = var.sample
  ami    = "ami-01982e3c510a4c471"
  instance_type = each.value["type"]
  tags = {
    Name = each.value["name"]
  }
}

variable "sample" {
  default = {
    one = {
      type = "t3.micro"
      name = "ONE"
    }
    two = {
      type = "t3.medium"
      name = "TWO"
    }
    three = {
      type = "t3.small"
      name = "THREE"
    }
  }
}