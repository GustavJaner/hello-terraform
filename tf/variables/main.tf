provider "aws" {
  profile = "lolcodes"
  region  = var.region
}

resource "aws_instance" "example_instance1337" {
  ami           = var.amis[var.region]
  instance_type = "t3.micro"
}