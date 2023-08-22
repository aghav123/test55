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

resource "aws_route_table" "route" {
   vpc_id     = "vpc-00bf0d10a6a41600c"

  route = []

  tags = {
    Name = "route table"
  }
}
resource "aws_security_group" "demo" {
 vpc_id     = "vpc-00bf0d10a6a41600c"



  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["10.0.120.0/24"]
  }
}
