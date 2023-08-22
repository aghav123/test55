resource "aws_subnet" "main" {
  vpc_id     = "vpc-00bf0d10a6a41600c"
  cidr_block = "10.0.120.0/24"

  tags = {
    Name = "private subnet"
  }
}

#creating internet gateway for our subnets to be able to connect to internet
resource "aws_internet_gateway" "igw" {

   
    vpc_id     = "vpc-00bf0d10a6a41600c"

    tags = {

        Name = "My-IGW"
    }
}
