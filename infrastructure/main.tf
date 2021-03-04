provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_storage_bucket" "storage_bucket" {
  name = "test-bucket-123151gdgdagbadg"
}