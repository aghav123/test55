resource "aws_subnet" "subnet2" {
  depends_on = [
    aws_vpc.custom,
    aws_subnet.subnet1
  ]
  
  vpc_id = "vpc-00bf0d10a6a41600c"

  cidr_block = "10.0.1.0/24"
  
  availability_zone = "ap-south-1"
  
  tags = {
    Name = "Private Subnet"
  }
}





