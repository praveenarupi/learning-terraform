resource "aws_instance" "web" {
  count = 3
  ami    = "ami-01982e3c510a4c471"
  instance_type = "t3.micro"
  tags = {
    Name = "sample-${count.index+1}"
  }
}