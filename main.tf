
variable "db_password" {
  description = "Password for the RDS database"
  type        = string
  sensitive   = true
}

resource "aws_instance" "example" {
  ami                    = "ami-0c55b159cbfafe1f0"
  instance_type           = "t2.micro"
  subnet_id               = aws_subnet.subnet1.id
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "ExampleInstance"
  }
}

resource "aws_instance" "example2" {
  ami                    = "ami-0c55b159cbfafe1f0"
  instance_type           = "t2.micro"
  subnet_id               = aws_subnet.subnet2.id
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "ExampleInstance2"
  }
}

resource "aws_db_subnet_group" "example" {
  name       = "example-db-subnet-group"
  subnet_ids = [
    aws_subnet.subnet3.id,
    aws_subnet.subnet4.id
  ]

  tags = {
    Name = "ExampleDBSubnetGroup"
  }
}

resource "aws_db_instance" "example" {
  allocated_storage      = 20
  engine                = "mysql"
  engine_version        = "8.0"
  instance_class        = "db.t3.micro"
  db_name              = "mydb"
  username             = "admin"
  password             = var.db_password
  skip_final_snapshot  = true

  db_subnet_group_name   = aws_db_subnet_group.example.name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "ExampleRDSInstance"
  }
}
