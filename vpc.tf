resource "aws_vpc" "demo02" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "mk-vpc-test101"
  }
}

resource "aws_subnet" "mk-subnet-demo101-public" {
  depends_on              = [aws_vpc.demo02]
  vpc_id                  = aws_vpc.demo02.id
  map_public_ip_on_launch = true
  cidr_block              = "10.0.1.0/24"
  availability_zone       = var.az
  tags = {
    Name = "subnet-mk-public-1"
  }

}

/*
resource "aws_subnet” “prod-subnet-public-1” {
    vpc_id = “${aws_vpc.prod-vpc.id}”
    cidr_block = “10.0.1.0/24”
    map_public_ip_on_launch = “true” //it makes this a public subnet
    availability_zone = “eu-west-2a”
    tags {
        Name = “prod-subnet-public-1”
    }
}
*/