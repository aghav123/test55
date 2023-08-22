resource "aws_subnet" "main" {
  vpc_id     = "vpc-00bf0d10a6a41600c"
  cidr_block = "10.0.120.0/24"

  tags = {
    Name = "private subnet"
  }
}

#creating route table
resource "aws_route_table" "rt" {

  vpc_id     = "nat-0d688bbff8a47b274"
  route {

        cidr_block = "10.0.120.0/24"
        gateway_id = "vpc-00bf0d10a6a41600c"
    }


    tags = {

        Name = "My-Private-Routing-Table"
    }

}


