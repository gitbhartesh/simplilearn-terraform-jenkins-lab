terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIATPLYBEW7DCE4HZPO"
  secret_key = "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"
}
resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"
  tags = {
    Name = "Jenkins-Terraform-Instance"
  }
}