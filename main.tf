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



resource "aws_route_table" "example" {
  vpc_id = "vpc-00bf0d10a6a41600c"

  route {
    cidr_block = "10.0.1.0/24"
    gateway_id = aws_internet_gateway.example.id
  }

  route {
    ipv6_cidr_block        = "::/0"
   
  }

  tags = {
    Name = "example"
  }
}


# Creating Route table for Private Subnet
resource "aws_route_table" "rt_private" {
    vpc_id = aws_vpc.my_vpc.id
tags = {
        Name = "Route Table for the Private Subnet"
    }
}
resource "aws_route_table_association" "rt_associate_private_2" {
    subnet_id = aws_subnet.demosubnet2.id
    route_table_id = aws_route_table.rt_private.id
}

