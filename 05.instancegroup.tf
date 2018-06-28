resource "google_compute_instance_group" "tf-instance-group" {
  name        = "tf-intstance-group"
  description = "tf instance group"
  zone        = "${var.region_zone}"
  instances = [
    "${google_compute_instance.tf-web01.self_link}",
    "${google_compute_instance.tf-web02.self_link}",
    "${google_compute_instance.tf-web03.self_link}",
  ]
}
