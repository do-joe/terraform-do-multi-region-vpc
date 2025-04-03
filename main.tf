terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.50"
    }
  }
}

resource "digitalocean_vpc" "primary" {
  name     = "${var.name_prefix}-${var.primary_region}"
  region   = var.primary_region
  ip_range = var.primary_ip_range
}

resource "digitalocean_vpc" "secondary" {
  name   = "${var.name_prefix}-${var.secondary_region}"
  region = var.secondary_region
}

resource "digitalocean_vpc_peering" "peering" {
  name = "${var.name_prefix}-${var.primary_region}-${var.secondary_region}"
  vpc_ids = [
    digitalocean_vpc.primary.id,
    digitalocean_vpc.secondary.id
  ]
}
