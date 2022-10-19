resource "aws_instance" "web" {
  ami    = "ami-01982e3c510a4c471"
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
}

variable "instance_type" {
  default = null
}