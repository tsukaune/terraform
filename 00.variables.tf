variable "region" {
  default = "asia-northeast1"
}

variable "region_zone" {
  default = "asia-northeast1-a"
}
variable "region_zone2" {
  default = "asia-northeast1-c"
}

variable "bastion_ssh_keys" {
  type = "string"
  default = <<EOF
gcpadmin:ssh-rsa hogehoge
EOF
}
 
variable "web_ssh_keys" {
  type = "string"
  default = <<EOF
gcpadmin:ssh-rsa hogehoge
EOF
}
