terraform {
  backend "s3" {
    bucket = "state-file-terra"
    key    = "jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}
