provider "google" {
  credentials = "${file("/home/gcpadmin/.config/gcloud/credentials.json")}"
  project     = "spartan-context-127502"
  region      = "asia-northeast1"
}
