terraform {
  backend "s3" {
    bucket  = "jig-tf-team1-state"
    key     = "jig-tf-team1-state.tfstate"
    region  = "ap-south-1"
    # encrypt = true
    profile = "jig-devops-pro"
  }
}
