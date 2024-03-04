# Data source for our SSH key

data "digitalocean_ssh_key" "c14-dokey" {
  name = "c14-dokey"
}

# Creating a Digital Ocean Droplet
resource "digitalocean_droplet" "c14_droplet" {
  image    = var.droplet_image
  name     = var.droplet_name
  region   = var.droplet_region
  size     = var.droplet_size
  ssh_keys = [data.digitalocean_ssh_key.c14-dokey.id]
}

