resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Main_Internet_Gateway"
  }
}

resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "Main_Route_Table"
  }
}

resource "aws_route_table_association" "main" {
  subnet_id      = aws_subnet.main[0].id
  route_table_id = aws_route_table.main.id
}
