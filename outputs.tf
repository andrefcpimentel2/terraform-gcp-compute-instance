output "instance_id" {
  value = google_compute_instance.server.instance_id
}


output "network_ip" {
  value = google_compute_instance.server.network_interface.0.network_ip 
}