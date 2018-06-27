resource "google_compute_address" "tsukaune-tf-bastion01-ip" {
  name         = "tsukaune-tf-bastion01-ip"
  region       = "${var.region}"
}

resource "google_compute_instance" "tsukaune-tf-bastion01" {
  name         = "tsukaune-tf-bastion01"
  machine_type = "f1-micro"
  zone         = "${var.region_zone}"
  tags         = ["server", "bastion"]

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  metadata_startup_script = <<EOT
yum install -y policycoreutils-python
semanage port -a -t ssh_port_t -p tcp 10022
sed -i 's/^#Port 22/Port 22\nPort 10022/' /etc/ssh/sshd_config
systemctl restart sshd
timedatectl set-timezone Asia/Tokyo
EOT

  network_interface {
    address    = "10.200.11.10"
    subnetwork = "${google_compute_subnetwork.tsukaune-tf-test-subnet1.name}"
    access_config {
      nat_ip   = "${google_compute_address.tsukaune-tf-bastion01-ip.address}"
    }
  }

  metadata {
    "block-project-ssh-keys" = "true"
    "sshKeys" = "${var.bastion_ssh_keys}"
  }

}
