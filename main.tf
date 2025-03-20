provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "key" {
  ami           = "i-010852f115e9e78da"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.demo-sg.id]

  tags = {
    Name        = "project_instance"
    Environment = "dev"
    Project     = "YourProjectName"
  }
}
