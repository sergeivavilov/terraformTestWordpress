# 23D-terraform-class1

#### Absent today:
- Adam Anwary
- Diyas
- Viachaslau Marmuzevich
- Siarhei Nazarau
- Elena Pantilei
- Viktoryia Parfianovich
- Dimple Patel
- Ihor Polyak
- Angel Ore Torres 
- Tasawer Yosufzai
- Radik Zinnurov

Terraform:
- infrastructure as code tool, one of the most popular tools in 
    the industry
- can work with multiple cloud providers like aws, google cloud, oracle etc
- company behind Terraform is Hashicorp that makes another set of useful tools
  like Vault, Consul, Nomad, Vagrant...

terraform provider:
    it's a software that allows terraform program to interact with platform like AWS/GCP/Oracle
    to manage resources.

how does terraform know what AWS credentials to use when we run it?
It uses profiles (access key/secret access key) configured in your ~/.aws/credentials file.
You can also hardcode credentials in your Terraform code but it's HIGHLY NOT RECOMMENDED.

### Learning terraform guide
Official tutorial from Hashicorp: https://developer.hashicorp.com/terraform/tutorials/aws-get-started

State file:
  text file that is used by terraform to keep track of all changes in code.
  When you make changes to terraform code, it compares changes against state file.
  Note: state file must be keep in secure location because everything is stored in clear text, so anyone who has access to state file will be able to read sensivite information (passwords/keys).

### Practice
1. Create a VPC
- CIDR is 10.100.0.0/16
- tags: 
  - Name: vpc-YOURNAME
  - Comment: Managed by terraform

2. Create 2 subnets:
  VPC ID must be looked up in AWS Console!!!
- subnet1 cidr: 10.100.10.0/24
  name: subnet1

- subnet2 cidr: 10.100.20.0/24
  name: subnet2

### Homework
- Practice task 1 & 2
- Create an EC2 instance
  - ami: "ami-0c7217cdde317cfec"
  - instance_type: "t2.micro"

- Create security group
  - allow port 22 from your IP address
  - attach it to EC2 instance in the step above