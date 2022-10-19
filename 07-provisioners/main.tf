#resource "aws_instance" "web" {
#  ami    = "ami-01982e3c510a4c471"
#  instance_type = "t3.micro"
#  vpc_security_group_ids = ["sg-0519f11f157aba430"]
#
#  provisioner "remote-exec" {
#    connection {
#      host = self.public_ip
#      user = "root"
#      password = "DevOps321"
#    }
#
#    inline = [
#      "echo Hello World"
#    ]
#  }
#}

resource "aws_instance" "web" {
  ami                    = "ami-01982e3c510a4c471"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0519f11f157aba430"]
}

resource "null_resource" "cli" {
  triggers = {
    abc = timestamp()
  }
  provisioner "remote-exec" {

    connection {
      host     = aws_instance.web.public_ip
      user     = "root"
      password = "DevOps321"
    }

    inline = [
      "echo Hello GALAXY"
    ]
  }
}