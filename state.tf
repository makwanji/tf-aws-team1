terraform {
  backend "s3" {
    bucket  = "jig-terraform-state"
    key     = "jig-terraform-state"
    region  = "ap-northeast-1"
    encrypt = true
    profile = "jig-devops-pro"
  }
}
