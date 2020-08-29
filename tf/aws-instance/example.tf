provider "aws" {
  profile = "lolcodes"
  region  = "eu-north-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
