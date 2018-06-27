resource "google_compute_instance_group" "tsukaune-tf-instance-group" {
  name        = "tsukaune-tf-intstance-group"
  description = "tsukaune-tf instance group"
  zone        = "${var.region_zone}"
  instances = [
    "${google_compute_instance.tsukaune-tf-web01.self_link}",
    "${google_compute_instance.tsukaune-tf-web02.self_link}",
    "${google_compute_instance.tsukaune-tf-web03.self_link}",
  ]
}
