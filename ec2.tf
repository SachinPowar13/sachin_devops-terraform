provider "aws" {
  region = "ap-southeast-1"   # Singapore region
  # Credentials should be provided via environment variables or a shared credentials file.
  # AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY are the recommended way to avoid committing secrets.
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0dfb1c86c34509daf" # Amazon Linux 2023 AMI (Mumbai)
  instance_type = "t2.medium"

  tags = {
    Name = "Terraform-EC2"
  }
}
