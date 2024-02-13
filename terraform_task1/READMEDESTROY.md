sergeivavilov@Tatianas-MacBook-Pro terraform-task1 % terraform destroy
aws_vpc.wordpress_vpc: Refreshing state... [id=vpc-0f9da74daa2a86673]
aws_key_pair.ssh_key: Refreshing state... [id=ssh-key]
aws_instance.wordpress_ec2: Refreshing state... [id=i-0a8e4519f719812fb]
aws_instance.wordpress_ec2_secondary: Refreshing state... [id=i-031e5e0675a4474be]
aws_instance.wordpress_ec2_additional: Refreshing state... [id=i-0f80eff6173b361b2]
aws_subnet.public_subnet_3: Refreshing state... [id=subnet-01de35c1d9dadbd3e]
aws_subnet.private_subnet_3: Refreshing state... [id=subnet-00c8894ec91efba7c]
aws_subnet.public_subnet_1: Refreshing state... [id=subnet-05558eb38172b344e]
aws_subnet.private_subnet_2: Refreshing state... [id=subnet-07f75959f8f29a3e0]
aws_subnet.public_subnet_2: Refreshing state... [id=subnet-0f91ff15f89ba0c56]
aws_internet_gateway.wordpress_igw: Refreshing state... [id=igw-0382efef62dfbeaaa]
aws_security_group.wordpress_sg: Refreshing state... [id=sg-0b6400c07132df1db]
aws_subnet.private_subnet_1: Refreshing state... [id=subnet-04b0e494e72c705a5]
aws_route_table.wordpress_rt: Refreshing state... [id=rtb-07fc30b2d143aa984]
aws_security_group.rds_sg: Refreshing state... [id=sg-02d4fda5633343a92]
aws_instance.wordpress_ec2_alternate: Refreshing state... [id=i-0f80bf79a3938eb91]
aws_route_table_association.a1: Refreshing state... [id=rtbassoc-050eaf4572b716425]
aws_route_table_association.a2: Refreshing state... [id=rtbassoc-04f32c99411ac264c]
aws_route_table_association.a3: Refreshing state... [id=rtbassoc-02c5ce035e1fa8c05]
aws_db_subnet_group.mysql_subnet_group: Refreshing state... [id=my-db-subnet-group]
aws_db_instance.mysql: Refreshing state... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_db_instance.mysql will be destroyed
  - resource "aws_db_instance" "mysql" {
      - address                               = "mydb.c14ksegew78v.us-east-1.rds.amazonaws.com" -> null
      - allocated_storage                     = 20 -> null
      - apply_immediately                     = false -> null
      - arn                                   = "arn:aws:rds:us-east-1:339713183355:db:mydb" -> null
      - auto_minor_version_upgrade            = true -> null
      - availability_zone                     = "us-east-1c" -> null
      - backup_retention_period               = 0 -> null
      - backup_target                         = "region" -> null
      - backup_window                         = "09:13-09:43" -> null
      - ca_cert_identifier                    = "rds-ca-rsa2048-g1" -> null
      - copy_tags_to_snapshot                 = false -> null
      - customer_owned_ip_enabled             = false -> null
      - db_subnet_group_name                  = "my-db-subnet-group" -> null
      - delete_automated_backups              = true -> null
      - deletion_protection                   = false -> null
      - enabled_cloudwatch_logs_exports       = [] -> null
      - endpoint                              = "mydb.c14ksegew78v.us-east-1.rds.amazonaws.com:3306" -> null
      - engine                                = "mysql" -> null
      - engine_version                        = "8.0" -> null
      - engine_version_actual                 = "8.0.35" -> null
      - hosted_zone_id                        = "Z2R2ITUGPM61AM" -> null
      - iam_database_authentication_enabled   = false -> null
      - id                                    = "db-EM4M67ASD43GPJNDJCI2QVTLDU" -> null
      - identifier                            = "mydb" -> null
      - instance_class                        = "db.t2.micro" -> null
      - iops                                  = 0 -> null
      - license_model                         = "general-public-license" -> null
      - listener_endpoint                     = [] -> null
      - maintenance_window                    = "sun:04:46-sun:05:16" -> null
      - master_user_secret                    = [] -> null
      - max_allocated_storage                 = 0 -> null
      - monitoring_interval                   = 0 -> null
      - multi_az                              = false -> null
      - network_type                          = "IPV4" -> null
      - option_group_name                     = "default:mysql-8-0" -> null
      - parameter_group_name                  = "default.mysql8.0" -> null
      - password                              = (sensitive value) -> null
      - performance_insights_enabled          = false -> null
      - performance_insights_retention_period = 0 -> null
      - port                                  = 3306 -> null
      - publicly_accessible                   = false -> null
      - replicas                              = [] -> null
      - resource_id                           = "db-EM4M67ASD43GPJNDJCI2QVTLDU" -> null
      - skip_final_snapshot                   = false -> null
      - status                                = "available" -> null
      - storage_encrypted                     = false -> null
      - storage_throughput                    = 0 -> null
      - storage_type                          = "gp2" -> null
      - tags                                  = {
          - "Name" = "mysql"
        } -> null
      - tags_all                              = {
          - "Name" = "mysql"
        } -> null
      - username                              = "admin" -> null
      - vpc_security_group_ids                = [
          - "sg-02d4fda5633343a92",
        ] -> null
    }

  # aws_db_subnet_group.mysql_subnet_group will be destroyed
  - resource "aws_db_subnet_group" "mysql_subnet_group" {
      - arn                     = "arn:aws:rds:us-east-1:339713183355:subgrp:my-db-subnet-group" -> null
      - description             = "Managed by Terraform" -> null
      - id                      = "my-db-subnet-group" -> null
      - name                    = "my-db-subnet-group" -> null
      - subnet_ids              = [
          - "subnet-00c8894ec91efba7c",
          - "subnet-04b0e494e72c705a5",
          - "subnet-07f75959f8f29a3e0",
        ] -> null
      - supported_network_types = [
          - "IPV4",
        ] -> null
      - tags                    = {
          - "Name" = "My DB Subnet Group"
        } -> null
      - tags_all                = {
          - "Name" = "My DB Subnet Group"
        } -> null
      - vpc_id                  = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_instance.wordpress_ec2 will be destroyed
  - resource "aws_instance" "wordpress_ec2" {
      - ami                                  = "ami-0c02fb55956c7d316" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:339713183355:instance/i-0a8e4519f719812fb" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0a8e4519f719812fb" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-0b45f95556b4e5398" -> null
      - private_dns                          = "ip-172-31-80-134.ec2.internal" -> null
      - private_ip                           = "172.31.80.134" -> null
      - public_dns                           = "ec2-44-201-159-40.compute-1.amazonaws.com" -> null
      - public_ip                            = "44.201.159.40" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-03f056dd15433d74d" -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-06c405a3738d66e13",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 1 -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-0f13600556f098124" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_instance.wordpress_ec2_additional will be destroyed
  - resource "aws_instance" "wordpress_ec2_additional" {
      - ami                                  = "ami-0c02fb55956c7d316" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:339713183355:instance/i-0f80eff6173b361b2" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0f80eff6173b361b2" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - key_name                             = "ssh-key" -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-05fcc4050ca121ddd" -> null
      - private_dns                          = "ip-172-31-90-44.ec2.internal" -> null
      - private_ip                           = "172.31.90.44" -> null
      - public_dns                           = "ec2-3-87-72-163.compute-1.amazonaws.com" -> null
      - public_ip                            = "3.87.72.163" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-03f056dd15433d74d" -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-06c405a3738d66e13",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 1 -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-0e89491b3f9c3f1b1" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_instance.wordpress_ec2_alternate will be destroyed
  - resource "aws_instance" "wordpress_ec2_alternate" {
      - ami                                  = "ami-0c02fb55956c7d316" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:339713183355:instance/i-0f80bf79a3938eb91" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1a" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0f80bf79a3938eb91" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - key_name                             = "ssh-key" -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-02e63b29d89041e00" -> null
      - private_dns                          = "ip-10-0-1-38.ec2.internal" -> null
      - private_ip                           = "10.0.1.38" -> null
      - public_ip                            = "44.222.89.191" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-05558eb38172b344e" -> null
      - tags                                 = {
          - "Name" = "wordpress-ec2"
        } -> null
      - tags_all                             = {
          - "Name" = "wordpress-ec2"
        } -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-0b6400c07132df1db",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 1 -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-0555ce983d06afbdd" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_instance.wordpress_ec2_secondary will be destroyed
  - resource "aws_instance" "wordpress_ec2_secondary" {
      - ami                                  = "ami-0c02fb55956c7d316" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:339713183355:instance/i-031e5e0675a4474be" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-031e5e0675a4474be" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-07e91783e1816e1cd" -> null
      - private_dns                          = "ip-172-31-86-101.ec2.internal" -> null
      - private_ip                           = "172.31.86.101" -> null
      - public_dns                           = "ec2-3-94-128-225.compute-1.amazonaws.com" -> null
      - public_ip                            = "3.94.128.225" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-03f056dd15433d74d" -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
      - tenancy                              = "default" -> null
      - user_data                            = "19151029c45916000f2b122450fae89f1bc386e6" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-06c405a3738d66e13",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 1 -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-0781fa2deb13ec43e" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_internet_gateway.wordpress_igw will be destroyed
  - resource "aws_internet_gateway" "wordpress_igw" {
      - arn      = "arn:aws:ec2:us-east-1:339713183355:internet-gateway/igw-0382efef62dfbeaaa" -> null
      - id       = "igw-0382efef62dfbeaaa" -> null
      - owner_id = "339713183355" -> null
      - tags     = {
          - "Name" = "wordpress_igw"
        } -> null
      - tags_all = {
          - "Name" = "wordpress_igw"
        } -> null
      - vpc_id   = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_key_pair.ssh_key will be destroyed
  - resource "aws_key_pair" "ssh_key" {
      - arn         = "arn:aws:ec2:us-east-1:339713183355:key-pair/ssh-key" -> null
      - fingerprint = "4e:6f:21:7e:2e:e2:7f:25:0b:21:dc:7c:31:e9:89:9d" -> null
      - id          = "ssh-key" -> null
      - key_name    = "ssh-key" -> null
      - key_pair_id = "key-09906d9c61160fac5" -> null
      - key_type    = "rsa" -> null
      - public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDSmIZtGqx+k8t1qW0JntnGa6sZ2BvDIzxtvgsAlL11R4HJnatdvMN95oTUuFGyVRUtkmo85eldg/Fp7aEOHeepmZmA9vNi++GVJ/kOXJ8XzVJyMtgam9Jf9qaAyPgJQLk6qVnp7MmvxZNGNZxJgUsfK/3UtBYmkB4hd4Pzu7sGtk0Oz9deDQY6WlKK7oBuwftJqQe/4w1ks+MMDak+z5D5WIMeutPra5c7ZVCx3KaCwmvLgPaJ0vDBHxbxCyKlTBN++RMk75efYZvpxeITMsyKaoZTbxue7RtzAn2e6N4nY4bn4dtjZEzskl4YJ38WIFqoJ4ImwvFH3AGIM4yW+BX/Urq7egDEGlDjvOKQ0TpQAlLO9qgd8yyBoLWbj3H/HE9rq1hYM7ai1W6Hh86Tbg3DjJ5xii5lSSeKN6sv04SFGjNqpl8lDomtRxuI25vX/SG449LBSa/p8GODhDT/Sm0mg3yeTOECcnobeGliY09p3NRBOqRK1xWG2Ylg/Rn4l4s= sergeivavilov@Tatianas-MacBook-Pro.local" -> null
      - tags        = {} -> null
      - tags_all    = {} -> null
    }

  # aws_route_table.wordpress_rt will be destroyed
  - resource "aws_route_table" "wordpress_rt" {
      - arn              = "arn:aws:ec2:us-east-1:339713183355:route-table/rtb-07fc30b2d143aa984" -> null
      - id               = "rtb-07fc30b2d143aa984" -> null
      - owner_id         = "339713183355" -> null
      - propagating_vgws = [] -> null
      - route            = [
          - {
              - carrier_gateway_id         = ""
              - cidr_block                 = "0.0.0.0/0"
              - core_network_arn           = ""
              - destination_prefix_list_id = ""
              - egress_only_gateway_id     = ""
              - gateway_id                 = "igw-0382efef62dfbeaaa"
              - ipv6_cidr_block            = ""
              - local_gateway_id           = ""
              - nat_gateway_id             = ""
              - network_interface_id       = ""
              - transit_gateway_id         = ""
              - vpc_endpoint_id            = ""
              - vpc_peering_connection_id  = ""
            },
        ] -> null
      - tags             = {
          - "Name" = "wordpress-rt"
        } -> null
      - tags_all         = {
          - "Name" = "wordpress-rt"
        } -> null
      - vpc_id           = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_route_table_association.a1 will be destroyed
  - resource "aws_route_table_association" "a1" {
      - id             = "rtbassoc-050eaf4572b716425" -> null
      - route_table_id = "rtb-07fc30b2d143aa984" -> null
      - subnet_id      = "subnet-05558eb38172b344e" -> null
    }

  # aws_route_table_association.a2 will be destroyed
  - resource "aws_route_table_association" "a2" {
      - id             = "rtbassoc-04f32c99411ac264c" -> null
      - route_table_id = "rtb-07fc30b2d143aa984" -> null
      - subnet_id      = "subnet-0f91ff15f89ba0c56" -> null
    }

  # aws_route_table_association.a3 will be destroyed
  - resource "aws_route_table_association" "a3" {
      - id             = "rtbassoc-02c5ce035e1fa8c05" -> null
      - route_table_id = "rtb-07fc30b2d143aa984" -> null
      - subnet_id      = "subnet-01de35c1d9dadbd3e" -> null
    }

  # aws_security_group.rds_sg will be destroyed
  - resource "aws_security_group" "rds_sg" {
      - arn                    = "arn:aws:ec2:us-east-1:339713183355:security-group/sg-02d4fda5633343a92" -> null
      - description            = "Allow MySQL traffic from wordpress-sg" -> null
      - egress                 = [] -> null
      - id                     = "sg-02d4fda5633343a92" -> null
      - ingress                = [
          - {
              - cidr_blocks      = []
              - description      = ""
              - from_port        = 3306
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-0b6400c07132df1db",
                ]
              - self             = false
              - to_port          = 3306
            },
        ] -> null
      - name                   = "rds-sg" -> null
      - owner_id               = "339713183355" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name" = "rds-sg"
        } -> null
      - tags_all               = {
          - "Name" = "rds-sg"
        } -> null
      - vpc_id                 = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_security_group.wordpress_sg will be destroyed
  - resource "aws_security_group" "wordpress_sg" {
      - arn                    = "arn:aws:ec2:us-east-1:339713183355:security-group/sg-0b6400c07132df1db" -> null
      - description            = "Allow web and SSH traffic" -> null
      - egress                 = [] -> null
      - id                     = "sg-0b6400c07132df1db" -> null
      - ingress                = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 22
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 22
            },
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 443
            },
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 80
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 80
            },
        ] -> null
      - name                   = "wordpress-sg" -> null
      - owner_id               = "339713183355" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name" = "wordpress-sg"
        } -> null
      - tags_all               = {
          - "Name" = "wordpress-sg"
        } -> null
      - vpc_id                 = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.private_subnet_1 will be destroyed
  - resource "aws_subnet" "private_subnet_1" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-04b0e494e72c705a5" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1a" -> null
      - availability_zone_id                           = "use1-az1" -> null
      - cidr_block                                     = "10.0.4.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-04b0e494e72c705a5" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "private_subnet_1"
        } -> null
      - tags_all                                       = {
          - "Name" = "private_subnet_1"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.private_subnet_2 will be destroyed
  - resource "aws_subnet" "private_subnet_2" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-07f75959f8f29a3e0" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1b" -> null
      - availability_zone_id                           = "use1-az2" -> null
      - cidr_block                                     = "10.0.5.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-07f75959f8f29a3e0" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "private_subnet_2"
        } -> null
      - tags_all                                       = {
          - "Name" = "private_subnet_2"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.private_subnet_3 will be destroyed
  - resource "aws_subnet" "private_subnet_3" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-00c8894ec91efba7c" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1c" -> null
      - availability_zone_id                           = "use1-az4" -> null
      - cidr_block                                     = "10.0.6.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-00c8894ec91efba7c" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "private_subnet_3"
        } -> null
      - tags_all                                       = {
          - "Name" = "private_subnet_3"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.public_subnet_1 will be destroyed
  - resource "aws_subnet" "public_subnet_1" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-05558eb38172b344e" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1a" -> null
      - availability_zone_id                           = "use1-az1" -> null
      - cidr_block                                     = "10.0.1.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-05558eb38172b344e" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = true -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "public_subnet_1"
        } -> null
      - tags_all                                       = {
          - "Name" = "public_subnet_1"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.public_subnet_2 will be destroyed
  - resource "aws_subnet" "public_subnet_2" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-0f91ff15f89ba0c56" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1b" -> null
      - availability_zone_id                           = "use1-az2" -> null
      - cidr_block                                     = "10.0.2.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0f91ff15f89ba0c56" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = true -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "public_subnet_2"
        } -> null
      - tags_all                                       = {
          - "Name" = "public_subnet_2"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.public_subnet_3 will be destroyed
  - resource "aws_subnet" "public_subnet_3" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-01de35c1d9dadbd3e" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1c" -> null
      - availability_zone_id                           = "use1-az4" -> null
      - cidr_block                                     = "10.0.3.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-01de35c1d9dadbd3e" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = true -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "public_subnet_3"
        } -> null
      - tags_all                                       = {
          - "Name" = "public_subnet_3"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_vpc.wordpress_vpc will be destroyed
  - resource "aws_vpc" "wordpress_vpc" {
      - arn                                  = "arn:aws:ec2:us-east-1:339713183355:vpc/vpc-0f9da74daa2a86673" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.0.0.0/16" -> null
      - default_network_acl_id               = "acl-05e235b147c9727a4" -> null
      - default_route_table_id               = "rtb-0ea0c51bfc1d6d9fd" -> null
      - default_security_group_id            = "sg-04af99cf39ce463e1" -> null
      - dhcp_options_id                      = "dopt-04d583200151b20e8" -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-0f9da74daa2a86673" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-0ea0c51bfc1d6d9fd" -> null
      - owner_id                             = "339713183355" -> null
      - tags                                 = {
          - "Name" = "wordpress-vpc"
        } -> null
      - tags_all                             = {
          - "Name" = "wordpress-vpc"
        } -> null
    }

Plan: 0 to add, 0 to change, 21 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes




  aws_route_table_association.a3: Destroying... [id=rtbassoc-02c5ce035e1fa8c05]
aws_route_table_association.a2: Destroying... [id=rtbassoc-04f32c99411ac264c]
aws_route_table_association.a1: Destroying... [id=rtbassoc-050eaf4572b716425]
aws_instance.wordpress_ec2_secondary: Destroying... [id=i-031e5e0675a4474be]
aws_instance.wordpress_ec2_alternate: Destroying... [id=i-0f80bf79a3938eb91]
aws_instance.wordpress_ec2_additional: Destroying... [id=i-0f80eff6173b361b2]
aws_instance.wordpress_ec2: Destroying... [id=i-0a8e4519f719812fb]
aws_db_instance.mysql: Destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU]
aws_route_table_association.a1: Destruction complete after 1s
aws_route_table_association.a2: Destruction complete after 1s
aws_subnet.public_subnet_2: Destroying... [id=subnet-0f91ff15f89ba0c56]
aws_route_table_association.a3: Destruction complete after 1s
aws_subnet.public_subnet_3: Destroying... [id=subnet-01de35c1d9dadbd3e]
aws_route_table.wordpress_rt: Destroying... [id=rtb-07fc30b2d143aa984]
aws_subnet.public_subnet_2: Destruction complete after 0s
aws_subnet.public_subnet_3: Destruction complete after 0s
aws_route_table.wordpress_rt: Destruction complete after 0s
aws_internet_gateway.wordpress_igw: Destroying... [id=igw-0382efef62dfbeaaa]
aws_instance.wordpress_ec2_alternate: Still destroying... [id=i-0f80bf79a3938eb91, 10s elapsed]
aws_instance.wordpress_ec2_secondary: Still destroying... [id=i-031e5e0675a4474be, 10s elapsed]
aws_instance.wordpress_ec2: Still destroying... [id=i-0a8e4519f719812fb, 10s elapsed]
aws_instance.wordpress_ec2_additional: Still destroying... [id=i-0f80eff6173b361b2, 10s elapsed]
aws_internet_gateway.wordpress_igw: Still destroying... [id=igw-0382efef62dfbeaaa, 10s elapsed]
aws_instance.wordpress_ec2_secondary: Still destroying... [id=i-031e5e0675a4474be, 20s elapsed]
aws_instance.wordpress_ec2_alternate: Still destroying... [id=i-0f80bf79a3938eb91, 20s elapsed]
aws_instance.wordpress_ec2: Still destroying... [id=i-0a8e4519f719812fb, 20s elapsed]
aws_instance.wordpress_ec2_additional: Still destroying... [id=i-0f80eff6173b361b2, 20s elapsed]
aws_internet_gateway.wordpress_igw: Still destroying... [id=igw-0382efef62dfbeaaa, 20s elapsed]
aws_internet_gateway.wordpress_igw: Destruction complete after 28s
aws_instance.wordpress_ec2_additional: Still destroying... [id=i-0f80eff6173b361b2, 30s elapsed]
aws_instance.wordpress_ec2: Still destroying... [id=i-0a8e4519f719812fb, 30s elapsed]
aws_instance.wordpress_ec2_alternate: Still destroying... [id=i-0f80bf79a3938eb91, 30s elapsed]
aws_instance.wordpress_ec2_secondary: Still destroying... [id=i-031e5e0675a4474be, 30s elapsed]
aws_instance.wordpress_ec2_secondary: Destruction complete after 31s
aws_instance.wordpress_ec2: Destruction complete after 31s
aws_instance.wordpress_ec2_additional: Destruction complete after 31s
aws_instance.wordpress_ec2_alternate: Destruction complete after 31s
aws_subnet.public_subnet_1: Destroying... [id=subnet-05558eb38172b344e]
aws_key_pair.ssh_key: Destroying... [id=ssh-key]
aws_key_pair.ssh_key: Destruction complete after 0s
aws_subnet.public_subnet_1: Destruction complete after 0s
╷
│ Error: final_snapshot_identifier is required when skip_final_snapshot is false
│ 









Plan: 13 to add, 1 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_key_pair.ssh_key: Creating...
aws_subnet.public_subnet_2: Creating...
aws_subnet.public_subnet_1: Creating...
aws_internet_gateway.wordpress_igw: Creating...
aws_subnet.public_subnet_3: Creating...
aws_instance.wordpress_ec2_secondary: Creating...
aws_instance.wordpress_ec2: Creating...
aws_db_instance.mysql: Modifying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU]
aws_db_instance.mysql: Modifications complete after 0s [id=db-EM4M67ASD43GPJNDJCI2QVTLDU]
aws_key_pair.ssh_key: Creation complete after 0s [id=ssh-key]
aws_instance.wordpress_ec2_additional: Creating...
aws_internet_gateway.wordpress_igw: Creation complete after 1s [id=igw-0df259dec333634a9]
aws_route_table.wordpress_rt: Creating...
aws_route_table.wordpress_rt: Creation complete after 1s [id=rtb-0678bcd9875859e11]
aws_instance.wordpress_ec2_secondary: Still creating... [10s elapsed]
aws_instance.wordpress_ec2: Still creating... [10s elapsed]
aws_subnet.public_subnet_3: Still creating... [10s elapsed]
aws_subnet.public_subnet_1: Still creating... [10s elapsed]
aws_subnet.public_subnet_2: Still creating... [10s elapsed]
aws_instance.wordpress_ec2_additional: Still creating... [10s elapsed]
aws_subnet.public_subnet_1: Creation complete after 11s [id=subnet-0fb8af2df144475c7]
aws_subnet.public_subnet_3: Creation complete after 11s [id=subnet-0e9050dea768903db]
aws_route_table_association.a3: Creating...
aws_route_table_association.a1: Creating...
aws_instance.wordpress_ec2_alternate: Creating...
aws_subnet.public_subnet_2: Creation complete after 11s [id=subnet-0ed8475129c98bddc]
aws_route_table_association.a2: Creating...
aws_route_table_association.a3: Creation complete after 1s [id=rtbassoc-08331ca49739f7f77]
aws_route_table_association.a1: Creation complete after 1s [id=rtbassoc-0d810c6fe326c5515]
aws_route_table_association.a2: Creation complete after 2s [id=rtbassoc-0aff605bf6baa3c5f]
aws_instance.wordpress_ec2: Still creating... [20s elapsed]
aws_instance.wordpress_ec2_secondary: Still creating... [20s elapsed]
aws_instance.wordpress_ec2_additional: Still creating... [20s elapsed]
aws_instance.wordpress_ec2_alternate: Still creating... [10s elapsed]
aws_instance.wordpress_ec2: Creation complete after 22s [id=i-0e3b1e0f0934511a8]
aws_instance.wordpress_ec2_secondary: Still creating... [30s elapsed]
aws_instance.wordpress_ec2_additional: Still creating... [30s elapsed]
aws_instance.wordpress_ec2_alternate: Still creating... [20s elapsed]
aws_instance.wordpress_ec2_secondary: Creation complete after 33s [id=i-0b4b274213be3685d]
aws_instance.wordpress_ec2_additional: Creation complete after 33s [id=i-082ba0c7552fec281]
aws_instance.wordpress_ec2_alternate: Still creating... [30s elapsed]
aws_instance.wordpress_ec2_alternate: Creation complete after 33s [id=i-03bc6ab3ab52026d4]

Apply complete! Resources: 13 added, 1 changed, 0 destroyed.
sergeivavilov@Tatianas-MacBook-Pro terraform-task1 % terraform destroy
aws_key_pair.ssh_key: Refreshing state... [id=ssh-key]
aws_vpc.wordpress_vpc: Refreshing state... [id=vpc-0f9da74daa2a86673]
aws_instance.wordpress_ec2_secondary: Refreshing state... [id=i-0b4b274213be3685d]
aws_instance.wordpress_ec2: Refreshing state... [id=i-0e3b1e0f0934511a8]
aws_instance.wordpress_ec2_additional: Refreshing state... [id=i-082ba0c7552fec281]
aws_subnet.private_subnet_2: Refreshing state... [id=subnet-07f75959f8f29a3e0]
aws_subnet.private_subnet_1: Refreshing state... [id=subnet-04b0e494e72c705a5]
aws_subnet.public_subnet_2: Refreshing state... [id=subnet-0ed8475129c98bddc]
aws_subnet.public_subnet_1: Refreshing state... [id=subnet-0fb8af2df144475c7]
aws_subnet.public_subnet_3: Refreshing state... [id=subnet-0e9050dea768903db]
aws_internet_gateway.wordpress_igw: Refreshing state... [id=igw-0df259dec333634a9]
aws_security_group.wordpress_sg: Refreshing state... [id=sg-0b6400c07132df1db]
aws_subnet.private_subnet_3: Refreshing state... [id=subnet-00c8894ec91efba7c]
aws_route_table.wordpress_rt: Refreshing state... [id=rtb-0678bcd9875859e11]
aws_db_subnet_group.mysql_subnet_group: Refreshing state... [id=my-db-subnet-group]
aws_security_group.rds_sg: Refreshing state... [id=sg-02d4fda5633343a92]
aws_instance.wordpress_ec2_alternate: Refreshing state... [id=i-03bc6ab3ab52026d4]
aws_route_table_association.a1: Refreshing state... [id=rtbassoc-0d810c6fe326c5515]
aws_route_table_association.a2: Refreshing state... [id=rtbassoc-0aff605bf6baa3c5f]
aws_route_table_association.a3: Refreshing state... [id=rtbassoc-08331ca49739f7f77]
aws_db_instance.mysql: Refreshing state... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_db_instance.mysql will be destroyed
  - resource "aws_db_instance" "mysql" {
      - address                               = "mydb.c14ksegew78v.us-east-1.rds.amazonaws.com" -> null
      - allocated_storage                     = 20 -> null
      - apply_immediately                     = false -> null
      - arn                                   = "arn:aws:rds:us-east-1:339713183355:db:mydb" -> null
      - auto_minor_version_upgrade            = true -> null
      - availability_zone                     = "us-east-1c" -> null
      - backup_retention_period               = 0 -> null
      - backup_target                         = "region" -> null
      - backup_window                         = "09:13-09:43" -> null
      - ca_cert_identifier                    = "rds-ca-rsa2048-g1" -> null
      - copy_tags_to_snapshot                 = false -> null
      - customer_owned_ip_enabled             = false -> null
      - db_subnet_group_name                  = "my-db-subnet-group" -> null
      - delete_automated_backups              = true -> null
      - deletion_protection                   = false -> null
      - enabled_cloudwatch_logs_exports       = [] -> null
      - endpoint                              = "mydb.c14ksegew78v.us-east-1.rds.amazonaws.com:3306" -> null
      - engine                                = "mysql" -> null
      - engine_version                        = "8.0" -> null
      - engine_version_actual                 = "8.0.35" -> null
      - hosted_zone_id                        = "Z2R2ITUGPM61AM" -> null
      - iam_database_authentication_enabled   = false -> null
      - id                                    = "db-EM4M67ASD43GPJNDJCI2QVTLDU" -> null
      - identifier                            = "mydb" -> null
      - instance_class                        = "db.t2.micro" -> null
      - iops                                  = 0 -> null
      - license_model                         = "general-public-license" -> null
      - listener_endpoint                     = [] -> null
      - maintenance_window                    = "sun:04:46-sun:05:16" -> null
      - master_user_secret                    = [] -> null
      - max_allocated_storage                 = 0 -> null
      - monitoring_interval                   = 0 -> null
      - multi_az                              = false -> null
      - network_type                          = "IPV4" -> null
      - option_group_name                     = "default:mysql-8-0" -> null
      - parameter_group_name                  = "default.mysql8.0" -> null
      - password                              = (sensitive value) -> null
      - performance_insights_enabled          = false -> null
      - performance_insights_retention_period = 0 -> null
      - port                                  = 3306 -> null
      - publicly_accessible                   = false -> null
      - replicas                              = [] -> null
      - resource_id                           = "db-EM4M67ASD43GPJNDJCI2QVTLDU" -> null
      - skip_final_snapshot                   = true -> null
      - status                                = "available" -> null
      - storage_encrypted                     = false -> null
      - storage_throughput                    = 0 -> null
      - storage_type                          = "gp2" -> null
      - tags                                  = {
          - "Name" = "mysql"
        } -> null
      - tags_all                              = {
          - "Name" = "mysql"
        } -> null
      - username                              = "admin" -> null
      - vpc_security_group_ids                = [
          - "sg-02d4fda5633343a92",
        ] -> null
    }

  # aws_db_subnet_group.mysql_subnet_group will be destroyed
  - resource "aws_db_subnet_group" "mysql_subnet_group" {
      - arn                     = "arn:aws:rds:us-east-1:339713183355:subgrp:my-db-subnet-group" -> null
      - description             = "Managed by Terraform" -> null
      - id                      = "my-db-subnet-group" -> null
      - name                    = "my-db-subnet-group" -> null
      - subnet_ids              = [
          - "subnet-00c8894ec91efba7c",
          - "subnet-04b0e494e72c705a5",
          - "subnet-07f75959f8f29a3e0",
        ] -> null
      - supported_network_types = [
          - "IPV4",
        ] -> null
      - tags                    = {
          - "Name" = "My DB Subnet Group"
        } -> null
      - tags_all                = {
          - "Name" = "My DB Subnet Group"
        } -> null
      - vpc_id                  = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_instance.wordpress_ec2 will be destroyed
  - resource "aws_instance" "wordpress_ec2" {
      - ami                                  = "ami-0c02fb55956c7d316" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:339713183355:instance/i-0e3b1e0f0934511a8" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0e3b1e0f0934511a8" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-016f4be48380dd7cd" -> null
      - private_dns                          = "ip-172-31-89-232.ec2.internal" -> null
      - private_ip                           = "172.31.89.232" -> null
      - public_dns                           = "ec2-18-234-198-192.compute-1.amazonaws.com" -> null
      - public_ip                            = "18.234.198.192" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-03f056dd15433d74d" -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-06c405a3738d66e13",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 1 -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-03c48f86db5d235ec" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_instance.wordpress_ec2_additional will be destroyed
  - resource "aws_instance" "wordpress_ec2_additional" {
      - ami                                  = "ami-0c02fb55956c7d316" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:339713183355:instance/i-082ba0c7552fec281" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-082ba0c7552fec281" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - key_name                             = "ssh-key" -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-08d1a9c1521432ae4" -> null
      - private_dns                          = "ip-172-31-94-160.ec2.internal" -> null
      - private_ip                           = "172.31.94.160" -> null
      - public_dns                           = "ec2-44-201-130-84.compute-1.amazonaws.com" -> null
      - public_ip                            = "44.201.130.84" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-03f056dd15433d74d" -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-06c405a3738d66e13",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 1 -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-047060186e0396e0a" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_instance.wordpress_ec2_alternate will be destroyed
  - resource "aws_instance" "wordpress_ec2_alternate" {
      - ami                                  = "ami-0c02fb55956c7d316" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:339713183355:instance/i-03bc6ab3ab52026d4" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1a" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-03bc6ab3ab52026d4" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - key_name                             = "ssh-key" -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-0f350ca6c3cac8444" -> null
      - private_dns                          = "ip-10-0-1-136.ec2.internal" -> null
      - private_ip                           = "10.0.1.136" -> null
      - public_ip                            = "3.208.73.199" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-0fb8af2df144475c7" -> null
      - tags                                 = {
          - "Name" = "wordpress-ec2"
        } -> null
      - tags_all                             = {
          - "Name" = "wordpress-ec2"
        } -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-0b6400c07132df1db",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 1 -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-0caf422a22963bb52" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_instance.wordpress_ec2_secondary will be destroyed
  - resource "aws_instance" "wordpress_ec2_secondary" {
      - ami                                  = "ami-0c02fb55956c7d316" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:339713183355:instance/i-0b4b274213be3685d" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0b4b274213be3685d" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-07345c24803477eb7" -> null
      - private_dns                          = "ip-172-31-81-140.ec2.internal" -> null
      - private_ip                           = "172.31.81.140" -> null
      - public_dns                           = "ec2-3-82-108-35.compute-1.amazonaws.com" -> null
      - public_ip                            = "3.82.108.35" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-03f056dd15433d74d" -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
      - tenancy                              = "default" -> null
      - user_data                            = "19151029c45916000f2b122450fae89f1bc386e6" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-06c405a3738d66e13",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 1 -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-04f2ffe1d04460912" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_internet_gateway.wordpress_igw will be destroyed
  - resource "aws_internet_gateway" "wordpress_igw" {
      - arn      = "arn:aws:ec2:us-east-1:339713183355:internet-gateway/igw-0df259dec333634a9" -> null
      - id       = "igw-0df259dec333634a9" -> null
      - owner_id = "339713183355" -> null
      - tags     = {
          - "Name" = "wordpress_igw"
        } -> null
      - tags_all = {
          - "Name" = "wordpress_igw"
        } -> null
      - vpc_id   = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_key_pair.ssh_key will be destroyed
  - resource "aws_key_pair" "ssh_key" {
      - arn         = "arn:aws:ec2:us-east-1:339713183355:key-pair/ssh-key" -> null
      - fingerprint = "4e:6f:21:7e:2e:e2:7f:25:0b:21:dc:7c:31:e9:89:9d" -> null
      - id          = "ssh-key" -> null
      - key_name    = "ssh-key" -> null
      - key_pair_id = "key-089b86d0780c04c31" -> null
      - key_type    = "rsa" -> null
      - public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDSmIZtGqx+k8t1qW0JntnGa6sZ2BvDIzxtvgsAlL11R4HJnatdvMN95oTUuFGyVRUtkmo85eldg/Fp7aEOHeepmZmA9vNi++GVJ/kOXJ8XzVJyMtgam9Jf9qaAyPgJQLk6qVnp7MmvxZNGNZxJgUsfK/3UtBYmkB4hd4Pzu7sGtk0Oz9deDQY6WlKK7oBuwftJqQe/4w1ks+MMDak+z5D5WIMeutPra5c7ZVCx3KaCwmvLgPaJ0vDBHxbxCyKlTBN++RMk75efYZvpxeITMsyKaoZTbxue7RtzAn2e6N4nY4bn4dtjZEzskl4YJ38WIFqoJ4ImwvFH3AGIM4yW+BX/Urq7egDEGlDjvOKQ0TpQAlLO9qgd8yyBoLWbj3H/HE9rq1hYM7ai1W6Hh86Tbg3DjJ5xii5lSSeKN6sv04SFGjNqpl8lDomtRxuI25vX/SG449LBSa/p8GODhDT/Sm0mg3yeTOECcnobeGliY09p3NRBOqRK1xWG2Ylg/Rn4l4s= sergeivavilov@Tatianas-MacBook-Pro.local" -> null
      - tags        = {} -> null
      - tags_all    = {} -> null
    }

  # aws_route_table.wordpress_rt will be destroyed
  - resource "aws_route_table" "wordpress_rt" {
      - arn              = "arn:aws:ec2:us-east-1:339713183355:route-table/rtb-0678bcd9875859e11" -> null
      - id               = "rtb-0678bcd9875859e11" -> null
      - owner_id         = "339713183355" -> null
      - propagating_vgws = [] -> null
      - route            = [
          - {
              - carrier_gateway_id         = ""
              - cidr_block                 = "0.0.0.0/0"
              - core_network_arn           = ""
              - destination_prefix_list_id = ""
              - egress_only_gateway_id     = ""
              - gateway_id                 = "igw-0df259dec333634a9"
              - ipv6_cidr_block            = ""
              - local_gateway_id           = ""
              - nat_gateway_id             = ""
              - network_interface_id       = ""
              - transit_gateway_id         = ""
              - vpc_endpoint_id            = ""
              - vpc_peering_connection_id  = ""
            },
        ] -> null
      - tags             = {
          - "Name" = "wordpress-rt"
        } -> null
      - tags_all         = {
          - "Name" = "wordpress-rt"
        } -> null
      - vpc_id           = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_route_table_association.a1 will be destroyed
  - resource "aws_route_table_association" "a1" {
      - id             = "rtbassoc-0d810c6fe326c5515" -> null
      - route_table_id = "rtb-0678bcd9875859e11" -> null
      - subnet_id      = "subnet-0fb8af2df144475c7" -> null
    }

  # aws_route_table_association.a2 will be destroyed
  - resource "aws_route_table_association" "a2" {
      - id             = "rtbassoc-0aff605bf6baa3c5f" -> null
      - route_table_id = "rtb-0678bcd9875859e11" -> null
      - subnet_id      = "subnet-0ed8475129c98bddc" -> null
    }

  # aws_route_table_association.a3 will be destroyed
  - resource "aws_route_table_association" "a3" {
      - id             = "rtbassoc-08331ca49739f7f77" -> null
      - route_table_id = "rtb-0678bcd9875859e11" -> null
      - subnet_id      = "subnet-0e9050dea768903db" -> null
    }

  # aws_security_group.rds_sg will be destroyed
  - resource "aws_security_group" "rds_sg" {
      - arn                    = "arn:aws:ec2:us-east-1:339713183355:security-group/sg-02d4fda5633343a92" -> null
      - description            = "Allow MySQL traffic from wordpress-sg" -> null
      - egress                 = [] -> null
      - id                     = "sg-02d4fda5633343a92" -> null
      - ingress                = [
          - {
              - cidr_blocks      = []
              - description      = ""
              - from_port        = 3306
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-0b6400c07132df1db",
                ]
              - self             = false
              - to_port          = 3306
            },
        ] -> null
      - name                   = "rds-sg" -> null
      - owner_id               = "339713183355" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name" = "rds-sg"
        } -> null
      - tags_all               = {
          - "Name" = "rds-sg"
        } -> null
      - vpc_id                 = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_security_group.wordpress_sg will be destroyed
  - resource "aws_security_group" "wordpress_sg" {
      - arn                    = "arn:aws:ec2:us-east-1:339713183355:security-group/sg-0b6400c07132df1db" -> null
      - description            = "Allow web and SSH traffic" -> null
      - egress                 = [] -> null
      - id                     = "sg-0b6400c07132df1db" -> null
      - ingress                = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 22
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 22
            },
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 443
            },
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 80
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 80
            },
        ] -> null
      - name                   = "wordpress-sg" -> null
      - owner_id               = "339713183355" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name" = "wordpress-sg"
        } -> null
      - tags_all               = {
          - "Name" = "wordpress-sg"
        } -> null
      - vpc_id                 = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.private_subnet_1 will be destroyed
  - resource "aws_subnet" "private_subnet_1" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-04b0e494e72c705a5" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1a" -> null
      - availability_zone_id                           = "use1-az1" -> null
      - cidr_block                                     = "10.0.4.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-04b0e494e72c705a5" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "private_subnet_1"
        } -> null
      - tags_all                                       = {
          - "Name" = "private_subnet_1"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.private_subnet_2 will be destroyed
  - resource "aws_subnet" "private_subnet_2" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-07f75959f8f29a3e0" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1b" -> null
      - availability_zone_id                           = "use1-az2" -> null
      - cidr_block                                     = "10.0.5.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-07f75959f8f29a3e0" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "private_subnet_2"
        } -> null
      - tags_all                                       = {
          - "Name" = "private_subnet_2"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.private_subnet_3 will be destroyed
  - resource "aws_subnet" "private_subnet_3" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-00c8894ec91efba7c" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1c" -> null
      - availability_zone_id                           = "use1-az4" -> null
      - cidr_block                                     = "10.0.6.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-00c8894ec91efba7c" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "private_subnet_3"
        } -> null
      - tags_all                                       = {
          - "Name" = "private_subnet_3"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.public_subnet_1 will be destroyed
  - resource "aws_subnet" "public_subnet_1" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-0fb8af2df144475c7" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1a" -> null
      - availability_zone_id                           = "use1-az1" -> null
      - cidr_block                                     = "10.0.1.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0fb8af2df144475c7" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = true -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "public_subnet_1"
        } -> null
      - tags_all                                       = {
          - "Name" = "public_subnet_1"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.public_subnet_2 will be destroyed
  - resource "aws_subnet" "public_subnet_2" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-0ed8475129c98bddc" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1b" -> null
      - availability_zone_id                           = "use1-az2" -> null
      - cidr_block                                     = "10.0.2.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0ed8475129c98bddc" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = true -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "public_subnet_2"
        } -> null
      - tags_all                                       = {
          - "Name" = "public_subnet_2"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_subnet.public_subnet_3 will be destroyed
  - resource "aws_subnet" "public_subnet_3" {
      - arn                                            = "arn:aws:ec2:us-east-1:339713183355:subnet/subnet-0e9050dea768903db" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1c" -> null
      - availability_zone_id                           = "use1-az4" -> null
      - cidr_block                                     = "10.0.3.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0e9050dea768903db" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = true -> null
      - owner_id                                       = "339713183355" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "public_subnet_3"
        } -> null
      - tags_all                                       = {
          - "Name" = "public_subnet_3"
        } -> null
      - vpc_id                                         = "vpc-0f9da74daa2a86673" -> null
    }

  # aws_vpc.wordpress_vpc will be destroyed
  - resource "aws_vpc" "wordpress_vpc" {
      - arn                                  = "arn:aws:ec2:us-east-1:339713183355:vpc/vpc-0f9da74daa2a86673" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.0.0.0/16" -> null
      - default_network_acl_id               = "acl-05e235b147c9727a4" -> null
      - default_route_table_id               = "rtb-0ea0c51bfc1d6d9fd" -> null
      - default_security_group_id            = "sg-04af99cf39ce463e1" -> null
      - dhcp_options_id                      = "dopt-04d583200151b20e8" -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-0f9da74daa2a86673" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-0ea0c51bfc1d6d9fd" -> null
      - owner_id                             = "339713183355" -> null
      - tags                                 = {
          - "Name" = "wordpress-vpc"
        } -> null
      - tags_all                             = {
          - "Name" = "wordpress-vpc"
        } -> null
    }

Plan: 0 to add, 0 to change, 21 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_route_table_association.a2: Destroying... [id=rtbassoc-0aff605bf6baa3c5f]
aws_route_table_association.a3: Destroying... [id=rtbassoc-08331ca49739f7f77]
aws_route_table_association.a1: Destroying... [id=rtbassoc-0d810c6fe326c5515]
aws_db_instance.mysql: Destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU]
aws_instance.wordpress_ec2_alternate: Destroying... [id=i-03bc6ab3ab52026d4]
aws_instance.wordpress_ec2: Destroying... [id=i-0e3b1e0f0934511a8]
aws_instance.wordpress_ec2_additional: Destroying... [id=i-082ba0c7552fec281]
aws_instance.wordpress_ec2_secondary: Destroying... [id=i-0b4b274213be3685d]
aws_route_table_association.a1: Destruction complete after 1s
aws_route_table_association.a2: Destruction complete after 1s
aws_subnet.public_subnet_2: Destroying... [id=subnet-0ed8475129c98bddc]
aws_route_table_association.a3: Destruction complete after 1s
aws_subnet.public_subnet_3: Destroying... [id=subnet-0e9050dea768903db]
aws_route_table.wordpress_rt: Destroying... [id=rtb-0678bcd9875859e11]
aws_subnet.public_subnet_2: Destruction complete after 0s
aws_route_table.wordpress_rt: Destruction complete after 1s
aws_internet_gateway.wordpress_igw: Destroying... [id=igw-0df259dec333634a9]
aws_subnet.public_subnet_3: Destruction complete after 1s
aws_instance.wordpress_ec2: Still destroying... [id=i-0e3b1e0f0934511a8, 10s elapsed]
aws_instance.wordpress_ec2_additional: Still destroying... [id=i-082ba0c7552fec281, 10s elapsed]
aws_instance.wordpress_ec2_alternate: Still destroying... [id=i-03bc6ab3ab52026d4, 10s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 10s elapsed]
aws_instance.wordpress_ec2_secondary: Still destroying... [id=i-0b4b274213be3685d, 10s elapsed]
aws_internet_gateway.wordpress_igw: Still destroying... [id=igw-0df259dec333634a9, 10s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 20s elapsed]
aws_instance.wordpress_ec2_alternate: Still destroying... [id=i-03bc6ab3ab52026d4, 20s elapsed]
aws_instance.wordpress_ec2_additional: Still destroying... [id=i-082ba0c7552fec281, 20s elapsed]
aws_instance.wordpress_ec2: Still destroying... [id=i-0e3b1e0f0934511a8, 20s elapsed]
aws_instance.wordpress_ec2_secondary: Still destroying... [id=i-0b4b274213be3685d, 20s elapsed]
aws_internet_gateway.wordpress_igw: Still destroying... [id=igw-0df259dec333634a9, 20s elapsed]
aws_instance.wordpress_ec2_alternate: Still destroying... [id=i-03bc6ab3ab52026d4, 30s elapsed]
aws_instance.wordpress_ec2_secondary: Still destroying... [id=i-0b4b274213be3685d, 30s elapsed]
aws_instance.wordpress_ec2: Still destroying... [id=i-0e3b1e0f0934511a8, 30s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 30s elapsed]
aws_instance.wordpress_ec2_additional: Still destroying... [id=i-082ba0c7552fec281, 30s elapsed]
aws_internet_gateway.wordpress_igw: Still destroying... [id=igw-0df259dec333634a9, 30s elapsed]
aws_internet_gateway.wordpress_igw: Destruction complete after 37s
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 40s elapsed]
aws_instance.wordpress_ec2: Still destroying... [id=i-0e3b1e0f0934511a8, 40s elapsed]
aws_instance.wordpress_ec2_additional: Still destroying... [id=i-082ba0c7552fec281, 40s elapsed]
aws_instance.wordpress_ec2_alternate: Still destroying... [id=i-03bc6ab3ab52026d4, 40s elapsed]
aws_instance.wordpress_ec2_secondary: Still destroying... [id=i-0b4b274213be3685d, 40s elapsed]
aws_instance.wordpress_ec2_secondary: Destruction complete after 42s
aws_instance.wordpress_ec2_additional: Destruction complete after 42s
aws_instance.wordpress_ec2_alternate: Destruction complete after 42s
aws_key_pair.ssh_key: Destroying... [id=ssh-key]
aws_subnet.public_subnet_1: Destroying... [id=subnet-0fb8af2df144475c7]
aws_key_pair.ssh_key: Destruction complete after 0s
aws_instance.wordpress_ec2: Destruction complete after 42s
aws_subnet.public_subnet_1: Destruction complete after 0s
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 50s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 1m0s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 1m10s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 1m20s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 1m30s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 1m40s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 1m50s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 2m0s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 2m10s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 2m20s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 2m30s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 2m40s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 2m50s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 3m0s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 3m10s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 3m20s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 3m30s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 3m40s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 3m50s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 4m0s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 4m10s elapsed]
aws_db_instance.mysql: Still destroying... [id=db-EM4M67ASD43GPJNDJCI2QVTLDU, 4m20s elapsed]
aws_db_instance.mysql: Destruction complete after 4m26s
aws_db_subnet_group.mysql_subnet_group: Destroying... [id=my-db-subnet-group]
aws_security_group.rds_sg: Destroying... [id=sg-02d4fda5633343a92]
aws_db_subnet_group.mysql_subnet_group: Destruction complete after 0s
aws_subnet.private_subnet_1: Destroying... [id=subnet-04b0e494e72c705a5]
aws_subnet.private_subnet_2: Destroying... [id=subnet-07f75959f8f29a3e0]
aws_subnet.private_subnet_3: Destroying... [id=subnet-00c8894ec91efba7c]
aws_subnet.private_subnet_2: Destruction complete after 1s
aws_subnet.private_subnet_1: Destruction complete after 1s
aws_subnet.private_subnet_3: Destruction complete after 1s
aws_security_group.rds_sg: Destruction complete after 1s
aws_security_group.wordpress_sg: Destroying... [id=sg-0b6400c07132df1db]
aws_security_group.wordpress_sg: Destruction complete after 1s
aws_vpc.wordpress_vpc: Destroying... [id=vpc-0f9da74daa2a86673]
aws_vpc.wordpress_vpc: Destruction complete after 1s

Destroy complete! Resources: 21 destroyed.
sergeivavilov@Tatianas-MacBook-Pro terraform-task1 % git add .                                                                                                  
sergeivavilov@Tatianas-MacBook-Pro terraform-task1 % git commit -m "error snapshot - same error was fixed in MYSQL.DB.tf line 7 -----skip_final_snapshot = true----- was moved to line 22 ...... thats it fuck yea !!!!!!!!!!!!!!!!!111111"
zsh: no such event: 111111
sergeivavilov@Tatianas-MacBook-Pro terraform-task1 % git commit -m "error snapshot - same error was fixed in MYSQL.DB.tf line 7 -----skip_final_snapshot = true----- was moved to line 22 ...... thats it fuck yea !!!!!!!!!!!!!"                                                          
dquote> 
sergeivavilov@Tatianas-MacBook-Pro terraform-task1 % git commit -m "error snapshot - same error was fixed in MYSQL.DB.tf line 7 -----skip_final_snapshot = true----- was moved to line 22 ...... thats it fuck yea "                                                     
[main fb1ce5e] error snapshot - same error was fixed in MYSQL.DB.tf line 7 -----skip_final_snapshot = true----- was moved to line 22 ...... thats it fuck yea
 3 files changed, 64 insertions(+), 511 deletions(-)
sergeivavilov@Tatianas-MacBook-Pro terraform-task1 % git push
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 12 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 1.37 KiB | 1.38 MiB/s, done.
Total 5 (delta 3), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To github.com:sergeivavilov/terraform-task1.git
   53895c8..fb1ce5e  main -> main
sergeivavilov@Tatianas-MacBook-Pro terraform-task1 % 