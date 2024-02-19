resource "aws_iam_user_ssh_key" "wordpress_sg_user" {
  username   = var.username
  encoding   = "SSH"
  public_key = var.sshkey
  }
resource "aws_key_pair" "wordpress_sshkey" {
  key_name   = "sshkey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDiupK3I/Yq6G4PIiFm83DWEDXsqz6RZUzBQtPmSG7szMAUWrJOzvYvtCYwey0B78Yf8j99Bi/JcdBOBDV/AWFWAgNBgWo99Q9kqSGQESRNzUNTf8GQLJtGln7ZUddu/4rj0HTXpmMfXjtH7VYMmJYhsWK9+9LzbqxjMaP3JQ7qAh8/5EOQ/OR+EWkRrjZd1VgafsPg+FJGTIPv4baW1+rc73Jzal1QHO71H+ddaCJODfdyJkhGdoSFJtlfOELuNPM4tG4J2YjUMlmPBaZwBFliJU17FtfgpWR1JJC4YOtcVg5JUC0rbjSOV2xFCJX18cIoy2ekRgyfs5l7fGnerO3QcU/NDFGIuMuvLxV67Xf6yH0ZFB+PJQmJ2gQj9fAIs0M3FZEJDg92lAZFl4rhInF2D13s8GMSEMg2gXwAyKZrT4ca+OHqY8zCdVnqIcaxIoCVJGgfCIDz0NuK6yT0DlP/Mw9ggywCjffQNY/u03DfGxop2+oeHohNX8f/Las5dZ8= steshak@Andy-2.local"
}