variable "server_port" {
  description = "port for project 1"
  default     = 1234
}

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

resource "aws_security_group" "Project1" {
  name = "project1_security"

  ingress {
    from_port   = "${var.server_port}"
    to_port     = "${var.server_port}"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "public_ip" {
  value = "${aws_instance.Project1.public_ip}"
}
