provider "aws" {
    region = "us-east-1"
}

module "team_a_sg" {
    source = "../module"
    name = "vss_terraform_sg"
    description = "vss created terraform managed SG"
    port = 80
}

output "vpc_id" {
    value = module.team_a_sg.vpc_id
}

output "sg_id" {
    value = "module.team_a_sg.sg_id"
}


module "rds" {
    source = "../module/rds"
    
    storage = 10
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t3.micro"
    username = "myadmin"
    password  = "securepassword"
}

