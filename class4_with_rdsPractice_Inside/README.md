### Class #4

Adam Anwary
Diyas
Viachaslau Marmuzevich
Siarhei Nazarau
Iskander Nurmatov
Elena Pantilei ?
Dimple Patel
Ihor Polyak
Vladimir Tkachenko
Angel Ore Torres
Tasawer Yosufzai
Radik Zinnurov 

Module:
    reusable block of terraform code. Used to avoid repetetion - in other words, you can call module many times from different locations


Practice:
1. Create a module for RDS DB instance with the following parameters:

- var.storage: database storage (size 10G)
- var.engine: database engine (mysql)
- var.engine_version: db engine version (5.7)
- var.instance_class: db instance class (db.t3.micro)
- var.username: db username (myadmin)
- var.password: db password (securepassword)
- skip_final_snapshot: true


2. Create security group in the same directory as RDS module. Use variables for ingress port and cidr_range for subnet. Attach to RDS from step 1.

3. Create outputs for RDS ARN and SG ARN.