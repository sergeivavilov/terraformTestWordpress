### Class #5

Data sources:
    used to retrieve information about resource(s) that is not managed in current terraform file or directory.
    for ex: you want to get VPC id which was created in other directory, to use it with security group.

Terraform backend:
    location of state file
    can be local (which is default) or remote


Local backend is local to where you are applying it to - it's your filesystem on laptop.

Remote is a remote location like S3 bucket, GCP bucket or any other supported backend (see documentation for this).
Example of remote backend in S3:
```
terraform {
  backend "s3" {
    bucket = "23d-terraform-state-bucket"
    key    = "statefiles/subnets-count-for-each.tfstate"
    region = "us-east-1"
  }
}
```

Why do we want to have a remote state?
- security: state files contain sensitive information in clear text, we want to securely store it and give access only to necessary people/operators.

- collaboration: when we makes changes to infstructure, other operators should be able to retrieve the state file and make changes, so to avoid destruction/unnecessary modifications to resources.

State file locking:
    lock state file to prevent *parallel* terraform apply; this can cause resources to be modified or deleted.
    When working with AWS, DynamoDB is used for state locking.


`count`: accepts number
    repeat resource multiple times

`for_each`: accepts map or set
    `set` data structure is similar to `list` but only has unique elements (lists can have duplicate elements)
    repeat resource multiple times, but on more advanced data structures, and provides more flexibility.



### Practice tasks
1. Use count to create 3 iam users: `alice`, `bob`, `john`. 
- Attach `Readonly` policy to all users. 
- Print outputs of all user ARNs.

2. Use for_each to create 3 EC2 instances. For_each will apply to `Name` tag of the instance. Tags are: "first_instance", "second_instance", "third_instance"
- ami = "ami-0c7217cdde317cfec" # or use a different ami of your choice
- instance_type = t2.micro
Rest of the arguments can be ignored (skipped).