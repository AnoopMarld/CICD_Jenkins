variable "gcp_project" {}

provider "google" {
  project = var.gcp_project 
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_01_c29072011471-9786-4552"
    prefix  = "terraform/state/lab01" 
  }
}

resource "google_compute_network" "exampleakm_vpc" {
  name                    = "exampleakm-vpc"
  auto_create_subnetworks = true 
}
