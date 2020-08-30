output "ami" {
  value = aws_instance.example_instance1337.ami
}

output "foobar" {
  value = {
    arn  = aws_instance.example_instance1337.arn
    id = aws_instance.example_instance1337.id
  }
}
