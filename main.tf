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

resource "aws_lambda_function" "demolambda" {
  function_name    = "demo lambda"
  filename         = "lambda_function_payload.zip"
  source_code_hash = filebase64sha256("lambda_function_payload.zip")
  handler          = "index.handler"
  role             = DevOps-Candidate-Lambda-Role
  runtime          = "nodejs14.x"
  vpc_config {
    subnet_ids = [000494df60610685b]
    security_group_ids = [07c6cdde377e486d0]
  }
}









