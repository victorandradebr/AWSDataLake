resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Trio_Data_VPC"
  }
}

resource "aws_instance" "airbyte_ec2" {
  ami           = "ami-0d191299f2822b1fa" # Substitua pelo ID correto da Amazon Linux 2 AMI
  instance_type = "t2.medium"
  key_name      = "key-pair-trio-data"
  subnet_id     = aws_subnet.main[0].id
  associate_public_ip_address = "true"
  vpc_security_group_ids = [aws_security_group.airbyte-security.id]

  root_block_device {
    volume_size = 10
  }

  tags = {
    Name = "airbyte-ec2"
  }
}
