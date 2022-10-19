#resource "aws_instance" "web" {
#  for_each = toset(var.sample)
#  ami    = "ami-01982e3c510a4c471"
#  instance_type = "t3.micro"
#  tags = {
#    Name = each.key
#  }
#}

#variable "sample" {
#  default = ["one", "two"]
#}
#

resource "aws_instance" "web" {
  for_each = var.sample
  ami    = "ami-01982e3c510a4c471"
  instance_type = each.value
  tags = {
    Name = each.key
  }
}

variable "sample" {
  default = {
    one = "t3.micro"
    two = "t3.medium"
    three = "t3.small"
  }
}