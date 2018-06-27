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
gcpadmin:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/Txk8r/VqgdcZlfQJiR/1JL34RY7y1rgUjQMxn78eDBrha3mP+5IwTsuAhHdGbRkf4orYtVPSZCRK0NjJAa38XNLstt3NpYSY1UUqhzN3kCfR0oCpDm7gWl3gaUNm8jxaVfpW2Yy3nrEAKS2YcUPIvmUdnlKfx/Hl8VEbNKE9EKL9Pv+/qoaARgwsuKFvdLGIKS4LV8TTBKQ5AY9BrjmM8qCZTKmLzkl2zHlX20Xy7LTDDO+lXhqT8xvU5RJ+g8uC0P3yLEUiq6RoNIPLHsjK5iy5a6jWUFiSCpBRDM7s7YECORNZR062Ns64MVAVLLGT1MMU9EY0AhDSgv9G1aYX gcpadmin@tsukaune-gw01
EOF
}
 
variable "web_ssh_keys" {
  type = "string"
  default = <<EOF
gcpadmin:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/Txk8r/VqgdcZlfQJiR/1JL34RY7y1rgUjQMxn78eDBrha3mP+5IwTsuAhHdGbRkf4orYtVPSZCRK0NjJAa38XNLstt3NpYSY1UUqhzN3kCfR0oCpDm7gWl3gaUNm8jxaVfpW2Yy3nrEAKS2YcUPIvmUdnlKfx/Hl8VEbNKE9EKL9Pv+/qoaARgwsuKFvdLGIKS4LV8TTBKQ5AY9BrjmM8qCZTKmLzkl2zHlX20Xy7LTDDO+lXhqT8xvU5RJ+g8uC0P3yLEUiq6RoNIPLHsjK5iy5a6jWUFiSCpBRDM7s7YECORNZR062Ns64MVAVLLGT1MMU9EY0AhDSgv9G1aYX gcpadmin@tsukaune-gw01
EOF
}
