resource "aws_subnet" "main" {
  vpc_id     = "vpc-00bf0d10a6a41600c"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}




