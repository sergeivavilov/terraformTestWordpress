create a vpc and 2 subnets using variables

vpc variables:
cidr: "192.168.0.0/16"
vpc subnet variables:
variable subnet1: value: "192.168.10.0/24"
variable subnet2 value: "192.168.20.0/24"
Create a security group using variables:
name: var.sg_name
from_port: var.port
to_port: var.port
Create RDS DB instance using terraform, also utilizing variables, with `myvariables.auto.tfvars`` file; use aws_db_instance resource
var.storage: database storage (size 10G)
var.engine: database engine (mysql)
var.engine_version: db engine version (5.7)
var.instance_class: db instance class (db.t3.micro)
var.username: db username (myadmin)
var.password: db password (securepassword)
skip_final_snapshot: true