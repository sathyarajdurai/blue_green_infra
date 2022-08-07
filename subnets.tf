resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.blue-green-deploy.id
  cidr_block = var.cidr_public
  availability_zone = "eu-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.blue-green-deploy.id
  cidr_block = var.cidr_private
  availability_zone = "eu-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "private"
  }
}

resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.blue-green-deploy.id
  cidr_block = var.cidr_public1
  availability_zone = "eu-west-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public1"
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.blue-green-deploy.id
  cidr_block = var.cidr_private1
  availability_zone = "eu-west-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "private1"
  }
}