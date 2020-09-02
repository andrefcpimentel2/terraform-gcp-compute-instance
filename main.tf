provider "google" {
  project     = var.gcp_project
  region      = var.gcp_region
}

data "google_compute_zones" "available" {
}

resource "google_compute_instance" "server" {
  count                   = var.servers
  zone                    = data.google_compute_zones.available.names[count.index]
  name                    = "${var.cust_name}-compute-instance"
  machine_type            = var.instance_type

  labels = {
    name                  = "${var.cust_name}-compute-instance"
    owner                 = var.owner
    created-by            = var.created-by
    sleep-at-night        = var.sleep-at-night
    ttl                   = var.TTL
  }

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork            = var.network-sub
    access_config {
      // Ephemeral IP
    }
  }
}