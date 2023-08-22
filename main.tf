resource "aws_subnet" "main" {
  vpc_id     = "vpc-00bf0d10a6a41600c"
  cidr_block = "10.0.120.0/24"

  tags = {
    Name = "Main"
  }
}



resource "aws_route_table" "example" {
   vpc_id     = "vpc-00bf0d10a6a41600c"

  route {
    cidr_block = "10.0.120.0/24"
    
  }

  route {
    ipv6_cidr_block        = "::/0"
  
  }

  tags = {
    Name = "example"
  }
}
