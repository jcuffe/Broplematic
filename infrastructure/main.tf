provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

terraform {
  backend "gcs" {
    bucket = "broplematic-infrastructure-storage"
    prefix = "terraform/state"
  }
}

resource "google_storage_bucket" "storage_bucket" {
  name = "test-bucket-123151gd-gdagba"
}