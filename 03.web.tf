resource "google_compute_instance" "tf-web01" {
  name         = "tf-web01"
  machine_type = "n1-standard-2"
  zone         = "${var.region_zone}"
  tags         = ["server", "web"]

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      size = "50"
      type = "pd-ssd"
    }
  }

  network_interface {
    address = "10.200.12.11"
    subnetwork = "${google_compute_subnetwork.tf-test-subnet2.name}"
    access_config {
    }
  }

  metadata_startup_script = <<EOT
timedatectl set-timezone Asia/Tokyo
EOT

  metadata {
    "block-project-ssh-keys" = "true"
    "sshKeys" = "${var.web_ssh_keys}"
  }
}

resource "google_compute_instance" "tf-web02" {
  name         = "tf-web02"
  machine_type = "n1-standard-2"
  zone         = "${var.region_zone}"
  tags         = ["server", "web"]

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      size = "50"
      type = "pd-ssd"
    }
  }

  network_interface {
    address = "10.200.12.12"
    subnetwork = "${google_compute_subnetwork.tf-test-subnet2.name}"
    access_config {
    }
  }

  metadata_startup_script = <<EOT
timedatectl set-timezone Asia/Tokyo
EOT

  metadata {
    "block-project-ssh-keys" = "true"
    "sshKeys" = "${var.web_ssh_keys}"
  }
}

resource "google_compute_instance" "tf-web03" {
  name         = "tf-web03"
  machine_type = "n1-standard-2"
  zone         = "${var.region_zone}"
  tags         = ["server", "web"]

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      size = "50"
      type = "pd-ssd"
    }
  }

  network_interface {
    address = "10.200.12.13"
    subnetwork = "${google_compute_subnetwork.tf-test-subnet2.name}"
    access_config {
    }
  }

  metadata_startup_script = <<EOT
timedatectl set-timezone Asia/Tokyo
EOT

  metadata {
    "block-project-ssh-keys" = "true"
    "sshKeys" = "${var.web_ssh_keys}"
  }
}
