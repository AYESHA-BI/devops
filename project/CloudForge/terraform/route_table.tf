resource "aws_route_table" "cloudforge_public_rt" {
  vpc_id = aws_vpc.cloudforge_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cloudforge_igw.id
  }

  tags = {
    Name = "CloudForge-Public-RT"
  }
}
resource "aws_route_table_association" "cloudforge_public_rta_1" {
  subnet_id      = aws_subnet.cloudforge_public_subnet.id
  route_table_id = aws_route_table.cloudforge_public_rt.id
}
resource "aws_route_table_association" "cloudforge_public_rta_2" {
  subnet_id      = aws_subnet.cloudforge_public_subnet_2.id
  route_table_id = aws_route_table.cloudforge_public_rt.id
}
