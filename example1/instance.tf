resource "aws_instance" "web" {
  ami    = "ami-01982e3c510a4c471"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.web.id]
}