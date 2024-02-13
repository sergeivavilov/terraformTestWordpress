#MySQL DB Instance

resource "aws_db_instance" "mysql" {


    // Other configurations...
    


  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  identifier                 = "mydb"
  username             = "admin"
  password             = "adminadmin"
  parameter_group_name = "default.mysql8.0"
  db_subnet_group_name = aws_db_subnet_group.mysql_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

    skip_final_snapshot = true

  tags = {
    Name = "mysql"
  }
}

resource "aws_db_subnet_group" "mysql_subnet_group" {
  name       = "my-db-subnet-group"
  subnet_ids = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id, aws_subnet.private_subnet_3.id]

  tags = {
    Name = "My DB Subnet Group"
  }
}


