provider "aws" {
  profile = "lolcodes"
  region  = "eu-north-1"
}

resource "aws_instance" "example_instance1337" {
  ami           = "ami-0363142d8c97b94c8"
  instance_type = "t3.micro"
}