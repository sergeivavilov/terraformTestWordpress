### Practice tasks
1. Use count to create 3 iam users: `alice`, `bob`, `john`. 
- Attach `Readonly` policy to all users. 
- Print outputs of all user ARNs.

2. Use for_each to create 3 EC2 instances. For_each will apply to `Name` tag of the instance. Tags are: "first_instance", "second_instance", "third_instance"
- ami = "ami-0c7217cdde317cfec" # or use a different ami of your choice
- instance_type = t2.micro
Rest of the arguments can be ignored (skipped).




Ниже приведены примеры конфигураций Terraform, которые решают описанные вами задачи. В этих примерах предполагается, что у вас есть базовое понимание Terraform и его синтаксиса.

Задача 1. Создание пользователей IAM с помощьюcount

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "user" {
  count = 3
  name  = ["alice", "bob", "john"][count.index]
}

resource "aws_iam_user_policy_attachment" "user_readonly" {
  count      = 3
  user       = aws_iam_user.user[count.index].name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

output "user_arns" {
  value = aws_iam_user.user[*].arn
}


Эта конфигурация создает трех пользователей IAM и прикрепляет ReadOnlyAccessполитику к каждому. Параметр countиспользуется для создания нескольких ресурсов на основе числового значения. В выходных данных будут отображены номера ARN всех созданных пользователей IAM.

Задача 2. Создание экземпляров EC2 с помощьюfor_each

variable "instance_tags" {
  description = "Tags for each instance"
  type        = list(string)
  default     = ["first_instance", "second_instance", "third_instance"]
}

resource "aws_instance" "example" {
  for_each = toset(var.instance_tags)

  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = each.value
  }
}




Примечания:
Прежде чем запускать эти конфигурации, убедитесь, что вы настроили учетные данные своего поставщика AWS.
Тип ami-0c7217cdde317cfecэкземпляра и t2.microиспользуются в качестве заполнителей. Убедитесь, что идентификатор AMI действителен в вашем регионе AWS, и при необходимости измените тип экземпляра.
Политика IAM ReadOnlyAccess— это управляемая политика, предоставляемая AWS. Убедитесь, что эта политика соответствует вашему варианту использования, или при необходимости замените ее другой политикой ARN.




Печать выходных данных всех пользовательских ARN в Terraform означает отображение имен ресурсов Amazon (ARN) созданных пользователей IAM как результата выполнения Terraform. В Terraform выходная переменная используется для извлечения данных из ваших ресурсов и представления их пользователю после того, как Terraform применит вашу конфигурацию. Это полезно для получения ключевой информации о предоставленных вами ресурсах, которую можно использовать для ссылок в других конфигурациях или просто в информационных целях.

Для задачи создания пользователей IAM ( alice, bob, john) и прикрепления ReadOnlyAccessк ним политики вы должны определить выходную переменную для отображения номеров ARN этих пользователей. ARN уникально идентифицирует пользователя IAM в AWS и может использоваться для ссылки на пользователя в других сервисах AWS или конфигурациях Terraform.

Учитывая предыдущий пример, где пользователи IAM создаются с помощью count, вы можете определить выходные данные для отображения всех пользовательских ARN:








output "instance_ids" {
  value = {for k, v in aws_instance.example : k => v.id}
}

output "instance_ips" {
  value = {for k, v in aws_instance.example : k => v.public_ip}
}



В этом определении вывода:

valueустановлено значение aws_iam_user.user[*].arn, которое использует выражение splat ( [*]) для сбора номеров ARN от каждого из созданных пользовательских ресурсов IAM. Ссылается aws_iam_user.userна блок ресурсов пользователя IAM и .arnосуществляет доступ к атрибуту ARN этих ресурсов.
Когда Terraform применяет эту конфигурацию, он создает указанных пользователей IAM, а затем, в конце выполнения, распечатывает номера ARN этих пользователей, как определено в выходной переменной.
Чтобы увидеть эти выходные данные, вы запускаете terraform applyприменение вашей конфигурации, и после того, как Terraform завершит создание ресурсов, он отобразит значения всех выходных переменных, определенных в вашей конфигурации. Вы также можете запустить программу terraform outputв любое время после применения конфигурации, чтобы увидеть текущие значения ваших выходов.

Этот механизм печати результатов — мощный способ динамического извлечения и обмена информацией между различными частями вашей конфигурации Terraform или между Terraform и внешними системами.



















Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_iam_user.user[0] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "alice"
      + path          = "/"
      + tags_all      = (known after apply)
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user[1] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "bob"
      + path          = "/"
      + tags_all      = (known after apply)
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user[2] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "john"
      + path          = "/"
      + tags_all      = (known after apply)
      + unique_id     = (known after apply)
    }

  # aws_iam_user_policy_attachment.user_readonly[0] will be created
  + resource "aws_iam_user_policy_attachment" "user_readonly" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
      + user       = "alice"
    }

  # aws_iam_user_policy_attachment.user_readonly[1] will be created
  + resource "aws_iam_user_policy_attachment" "user_readonly" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
      + user       = "bob"
    }

  # aws_iam_user_policy_attachment.user_readonly[2] will be created
  + resource "aws_iam_user_policy_attachment" "user_readonly" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
      + user       = "john"
    }

  # aws_instance.example["first_instance"] will be created
  + resource "aws_instance" "example" {
      + ami                                  = "ami-0c7217cdde317cfec"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "first_instance"
        }
      + tags_all                             = {
          + "Name" = "first_instance"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)
    }

  # aws_instance.example["second_instance"] will be created
  + resource "aws_instance" "example" {
      + ami                                  = "ami-0c7217cdde317cfec"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "second_instance"
        }
      + tags_all                             = {
          + "Name" = "second_instance"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)
    }

  # aws_instance.example["third_instance"] will be created
  + resource "aws_instance" "example" {
      + ami                                  = "ami-0c7217cdde317cfec"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "third_instance"
        }
      + tags_all                             = {
          + "Name" = "third_instance"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)
    }

Plan: 9 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + instance_ids = {
      + first_instance  = (known after apply)
      + second_instance = (known after apply)
      + third_instance  = (known after apply)
    }
  + instance_ips = {
      + first_instance  = (known after apply)
      + second_instance = (known after apply)
      + third_instance  = (known after apply)
    }
  + user_arns    = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]
