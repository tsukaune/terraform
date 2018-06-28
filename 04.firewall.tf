resource "google_compute_firewall" "tf-allow-icmp" {
  name    = "tf-allow-icmp"
  network = "${google_compute_network.tf-test-nw.name}"
  allow {
    protocol = "icmp"
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["bastion"]
}

resource "google_compute_firewall" "tf-allow-tcp-10022" {
  name    = "tf-allow-tcp-10022"
  network = "${google_compute_network.tf-test-nw.name}"
  allow {
    protocol = "tcp"
    ports    = ["10022"]
  }
  source_ranges = ["my-ip/32","35.194.117.241/32"]
  target_tags = ["bastion"]
}

resource "google_compute_firewall" "tf-allow-internal" {
  name    = "tf-allow-internal"
  network = "${google_compute_network.tf-test-nw.name}"
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "icmp"
  }
  source_ranges = ["10.200.11.0/24"]
  target_tags = ["server"]
}

resource "google_compute_firewall" "tf-allow-internal-lb" {
  name    = "tf-allow-internal-lb"
  network = "${google_compute_network.tf-test-nw.name}"
  allow {
    protocol = "tcp"
    ports    = ["11210"]
  }
  source_ranges = ["10.128.0.0/20"]
  target_tags = ["web"]
}

resource "google_compute_firewall" "tf-allow-health-check" {
  name    = "tf-allow-health-check"
  network = "${google_compute_network.tf-test-nw.name}"
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  source_ranges = ["35.191.0.0/16","130.211.0.0/22"]
  target_tags = ["web"]
}
