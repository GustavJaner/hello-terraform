variable "region" {
    type = string
}

variable "amis" {
  type = map(string)
  default = {
    "eu-north-1" = "ami-0363142d8c97b94c8"
    "eu-west-1" = "ami-1234567890"
  }
}