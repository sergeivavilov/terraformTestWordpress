variable ami_id {
  type        = string
  default = "ami-0277155c3f0ab2930"
  description = "AMI ID"
}

variable instance_type {
  type        = string
  default = "t2.micro"
  description = "Instance type"
}

variable comment {
  type        = string
  default = "This is an example comment"
  description = "Comment tag"
}

