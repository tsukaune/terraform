provider "google" {
  credentials = "${file("/home/hoge/.config/gcloud/credentials.json")}"
  project     = "PROJECT-ID"
  region      = "asia-northeast1"
}
