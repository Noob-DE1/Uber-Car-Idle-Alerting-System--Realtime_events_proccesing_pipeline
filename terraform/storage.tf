resource "google_storage_bucket" "dataflow_bucket" {

  name     = "${var.project_id}-dataflow-temp"
  location = var.region

  uniform_bucket_level_access = true
}