
resource "aws_db_instance" "wordpress_db" {
  allocated_storage    = 20
  db_name              = "wordpress"   # name mysql reserved by engine (not allowed to create )
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  storage_type         = "gp2"
  username             = "admin"
  password             = "adminadmin"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = "aws_db_subnet_group.mysql_db_sub.name"
  identifier = "wordpress"
tags={
  Name = "wordpress_db"
}
}
