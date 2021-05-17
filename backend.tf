terraform {
  backend "s3" {
    bucket = "terraform-state-dylan95"
    key    = "terraform/demo01"
    region = "ap-southeast-1"
  }
}