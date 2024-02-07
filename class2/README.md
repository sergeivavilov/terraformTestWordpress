### Class #2

Terraform variables:
    used to hold some values to reduce repetition

Data types in terraform:
- string: any text that's enclosed in double quotes
- number: numeric values to be used in terraform (0, 1, 2, 3, 65535)
- bool: `true` or `false` values in terraform
- list: a collection of objects of the same type
    ["a", "b", "7", "10.5"]
    [1, 2, 15, 1001]
- map: key-value pairs of objects
    {
        Name = "myname"
        Lastname = "mylastname"
    }

mylist_of_maps = [
    env1 = {
        env = "production"
        name = "prod-env"
    },
    env2 = {
        env = "dev"
        name = "dev-env"
    }
]

terraform state management:
if you want to view resource in state file, you can run:
`terraform state list`
to view information about specific resource:
`terraform state show aws_s3_bucket.mys3bucket`

### practice
1. create S3 bucket, use variables for bucket name:
    variable name: string
    value: YOURNAME-312-school
    
    - don't forget to declare variable
    - use tfvars file to pass name

2. create a vpc and 2 subnets using variables
- vpc variables:
    - cidr: "192.168.0.0/16"
- vpc subnet variables:
    - variable subnet1:
      value: "192.168.10.0/24"
    - variable subnet2
      value: "192.168.20.0/24"

3. Create a security group using variables:
- name: var.sg_name
- from_port: var.port
- to_port: var.port


4. Create RDS DB instance using terraform, also utilizing variables, with `myvariables.auto.tfvars`` file; use aws_db_instance resource
- var.storage: database storage (size 10G)
- var.engine: database engine (mysql)
- var.engine_version: db engine version (5.7)
- var.instance_class: db instance class (db.t3.micro)
- var.username: db username (myadmin)
- var.password: db password (securepassword)
- skip_final_snapshot: true