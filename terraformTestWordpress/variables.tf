variable cidr {
  type        = string
  default     = "10.100.0.0/16"
  description = "wordpress-vpc cidr_block"
}
variable pub-sub-1 {
  type        = string
  default     = "10.100.10.0/24"
  description = "wordpress pub-sub-1"
}
variable pub-sub-2 {
  type        = string
  default     = "10.100.20.0/24"
  description = "wordpress pub-sub-2"
}
variable pub-sub-3 {
  type        = string
  default     = "10.100.30.0/24"
  description = "wordpress pub-sub-3"
}
variable priv-sub-1 {
  type        = string
  default     = "10.100.50.0/24"
  description = "wordpress priv-sub-1"
}
variable priv-sub-2 {
  type        = string
  default     = "10.100.60.0/24"
  description = "wordpress priv-sub-2"
}
variable priv-sub-3 {
  type        = string
  default     = "10.100.70.0/24"
  description = "wordpress priv-sub-3"
}
 variable ingress_ports {
  type        = list(number)
  default     = [22,80,443]
  description = "List ingress ports for the wordpress-sg"
}
variable username {
  type        = string
  default     = "VSS"
  description = "Username for ssh to wordpress-ec2"
}
variable  sshkey {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDiupK3I/Yq6G4PIiFm83DWEDXsqz6RZUzBQtPmSG7szMAUWrJOzvYvtCYwey0B78Yf8j99Bi/JcdBOBDV/AWFWAgNBgWo99Q9kqSGQESRNzUNTf8GQLJtGln7ZUddu/4rj0HTXpmMfXjtH7VYMmJYhsWK9+9LzbqxjMaP3JQ7qAh8/5EOQ/OR+EWkRrjZd1VgafsPg+FJGTIPv4baW1+rc73Jzal1QHO71H+ddaCJODfdyJkhGdoSFJtlfOELuNPM4tG4J2YjUMlmPBaZwBFliJU17FtfgpWR1JJC4YOtcVg5JUC0rbjSOV2xFCJX18cIoy2ekRgyfs5l7fGnerO3QcU/NDFGIuMuvLxV67Xf6yH0ZFB+PJQmJ2gQj9fAIs0M3FZEJDg92lAZFl4rhInF2D13s8GMSEMg2gXwAyKZrT4ca+OHqY8zCdVnqIcaxIoCVJGgfCIDz0NuK6yT0DlP/Mw9ggywCjffQNY/u03DfGxop2+oeHohNX8f/Las5dZ8= steshak@Andy-2.local"
  description = "sshkey for wordpress-ec2"
}
variable  ami {
  type        = string
  default     = "ami-0cf10cdf9fcd62d37"
  description = "ami of wordpress_ec2 instance"
}
variable ssh_key {
  type        = string
  default     = "sshkey"
  description = "sshkey for wordpress_ec2"
}