resource "google_compute_network" "tf-test-nw"{
  name = "tf-test-nw"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "tf-test-subnet1"{
  name          = "tf-test-subnet1"
  ip_cidr_range = "10.200.11.0/24"
  network       = "${google_compute_network.tf-test-nw.name}"
  description   = "tf-test-subnet1"
  region        = "${var.region}"
}
resource "google_compute_subnetwork" "tf-test-subnet2"{
  name          = "tf-test-subnet2"
  ip_cidr_range = "10.200.12.0/24"
  network       = "${google_compute_network.tf-test-nw.name}"
  description   = "tf-test-subnet2"
  region        = "${var.region}"
}
resource "google_compute_subnetwork" "tf-test-subnet3"{
  name          = "tf-test-subnet3"
  ip_cidr_range = "10.200.13.0/24"
  network       = "${google_compute_network.tf-test-nw.name}"
  description   = "tf-test-subnet3"
  region        = "${var.region}"
}
