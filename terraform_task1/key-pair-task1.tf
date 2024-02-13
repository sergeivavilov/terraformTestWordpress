#Key Pair 

resource "aws_instance" "wordpress_ec2_additional" {
  ami           = "ami-0c02fb55956c7d316" # Replace with the correct AMI for your region
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ssh_key.key_name
  
  # Include other necessary configurations like security group, subnet, etc.
}



resource "aws_key_pair" "ssh_key" {
  key_name   = "ssh-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDSmIZtGqx+k8t1qW0JntnGa6sZ2BvDIzxtvgsAlL11R4HJnatdvMN95oTUuFGyVRUtkmo85eldg/Fp7aEOHeepmZmA9vNi++GVJ/kOXJ8XzVJyMtgam9Jf9qaAyPgJQLk6qVnp7MmvxZNGNZxJgUsfK/3UtBYmkB4hd4Pzu7sGtk0Oz9deDQY6WlKK7oBuwftJqQe/4w1ks+MMDak+z5D5WIMeutPra5c7ZVCx3KaCwmvLgPaJ0vDBHxbxCyKlTBN++RMk75efYZvpxeITMsyKaoZTbxue7RtzAn2e6N4nY4bn4dtjZEzskl4YJ38WIFqoJ4ImwvFH3AGIM4yW+BX/Urq7egDEGlDjvOKQ0TpQAlLO9qgd8yyBoLWbj3H/HE9rq1hYM7ai1W6Hh86Tbg3DjJ5xii5lSSeKN6sv04SFGjNqpl8lDomtRxuI25vX/SG449LBSa/p8GODhDT/Sm0mg3yeTOECcnobeGliY09p3NRBOqRK1xWG2Ylg/Rn4l4s= sergeivavilov@Tatianas-MacBook-Pro.local"
}
