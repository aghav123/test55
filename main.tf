resource "aws_subnet" "main" {
  vpc_id     = "vpc-00bf0d10a6a41600c"
  cidr_block = "10.0.120.0/24"

  tags = {
    Name = "private subnet"
  }
}

resource "aws_route_table" "example" {
   vpc_id     = "vpc-00bf0d10a6a41600c"

  route = []

  tags = {
    Name = "route table"
  }
}

terraform {
  backend "s3" {
    bucket = "3.devops.candidate.exam"
    key    = "karan.aghav"
    region = "ap-south-1"
  }
}
