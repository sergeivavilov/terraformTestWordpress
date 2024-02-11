resource "aws_db_instance" "default" {
  allocated_storage    = var.storage    #10
  #db_name              = "mydb"
  #storage_type        = "gp2"
  engine               = var.engine          #"mysql"
  engine_version       = var.engine_version #"5.7"
  instance_class       = var.instance_class  #"db.t3.micro"
  username             = var.username       #"myadmin"
  password             = var.password       #"securepassword"
  #parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}