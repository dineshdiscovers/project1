provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "Project1" {
  ami           = "ami-7d95b612"
  instance_type = "t2.micro"
  key_name      = "ansible"

  tags {
    Name = "awsec2"
  }
}
