terraform {
  required_version = ">1.10.0"
  required_providers {
    aws={
        source = "hasicorp/aws"
        version = "~>5.0"
    }

  }
backend "s3" {
    bucket         = "your-s3-bucket-name"
    key            = "terraform/state-${var.state_key}.tfstate"
    region         = "us-east-1"
    
  }
}


resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
