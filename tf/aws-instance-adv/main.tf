provider "aws" {
  profile = "lolcodes"
  region  = "eu-north-1"
}

resource "aws_key_pair" "example_key" {
  key_name   = "examplekey"
  public_key = file("terraform.pub")
} 

resource "aws_instance" "example_instance1337" {
  key_name      = aws_key_pair.example_key.key_name
  ami           = "ami-0363142d8c97b94c8"
  instance_type = "t3.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.example_instance1337.public_ip}"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("terraform")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo from ec2 instance",
      "sudo amazon-linux-extras enable nginx1.12",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]
  }
}