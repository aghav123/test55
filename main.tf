resource "aws_subnet" "main" {
  vpc_id     = "vpc-00bf0d10a6a41600c"
  cidr_block = "10.0.120.0/24"

  tags = {
    Name = "private subnet"
  }
}



terraform {
  backend "s3" {
    bucket = "3.devops.candidate.exam"
    key    = "karan.aghav"
    region = "ap-south-1"
  }
}
