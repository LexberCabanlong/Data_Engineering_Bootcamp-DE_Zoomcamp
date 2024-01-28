terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "5.11.0"
        }
    }
}

provider "google" {
    # Configuration options
    credentials = "../GCP Keys/alien-rainfall-411316-69285c8a554e.json"
    project     = "alien-rainfall-411316"
    region      = "us-central1"
}

resource "google_storage_bucket" "zoomcamp-bucket" {
    name          = "alien-rainfall-411316-terra-bucket"
    location      = "US"
    force_destroy = true

    lifecycle_rule {
        condition {
            age = 1
        }
        action {
            type = "AbortIncompleteMultipartUpload"
        }
    }
}