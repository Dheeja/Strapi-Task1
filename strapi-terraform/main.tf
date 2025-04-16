provider "aws" {
  region = var.region
}

# EC2 Instance with user_data script to install Docker, pull the image, and run Strapi
resource "aws_instance" "strapi" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "key"  # Updated to your key name

  user_data = file("user-data.sh")

  tags = {
    Name = "StrapiEC2"
  }

  vpc_security_group_ids = [aws_security_group.strapi_sg.id]
}

# Security Group allowing HTTP and SSH (restricted to your IP for SSH)
resource "aws_security_group" "strapi_sg" {
  name        = "strapi_sg"
  description = "Allow HTTP and SSH"

  ingress {
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from anywhere (use cautiously)
}


  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow public access for HTTP (port 80)
  }

  ingress {
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Open for Strapi app (can restrict to a range if needed)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
