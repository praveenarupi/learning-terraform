provider "aws" {
  region = "us-east-1"
}

data "aws_ssm_parameter" "foo" {
    name = "mutable.docdb.dev.credentials"
}

resource "local_file" "foo" {
  content  = data.aws_ssm_parameter.foo.value
  filename = "/tmp/out"
}