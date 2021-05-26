data "aws_vpc" "VPC02" {
  id = var.VPC_ID
}

resource "aws_subnet" "Subnet02" {
  vpc_id            = data.aws_vpc.VPC02.id
  availability_zone = var.AWS_SUBNET_ZONE

  cidr_block        = cidrsubnet(data.aws_vpc.VPC02.cidr_block, 4, 1)

  tags = {
    Name = "Subnet02"
  }
}