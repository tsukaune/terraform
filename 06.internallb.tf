resource "google_compute_health_check" "tf-web-health-check" {
  name = "tf-web-health-check"
  check_interval_sec = 1
  timeout_sec        = 1

  tcp_health_check {
    port = "8080"
  }
}

resource "google_compute_region_backend_service" "tf-web-int-lb" {
  name                  = "tf-web-int-lb"
  health_checks         = ["${google_compute_health_check.tf-web-health-check.self_link}"]
  protocol              = "TCP"
  timeout_sec           = 10
  session_affinity      = "NONE"
  region                = "${var.region}"

  backend {
    group = "${google_compute_instance_group.tf-instance-group.self_link}"
  }
}

resource "google_compute_forwarding_rule" "tf-web-int-lb-forwarding-rule" {
  name                  = "tf-web--int-lb-forwarding-rule"
  load_balancing_scheme = "INTERNAL"
  ports                 = ["11210"]
  region                = "${var.region}"
  network               = "${google_compute_network.tf-test-nw.self_link}"
  subnetwork            = "${google_compute_subnetwork.tf-test-subnet2.self_link}"
  backend_service       = "${google_compute_region_backend_service.tf-web-int-lb.self_link}"
  ip_address            = "10.200.12.200"
}
