resource "google_bigquery_dataset" "pipeline_dataset" {
  project    = "project-a48dc085-0e8c-4a6e-9ca"
  dataset_id = "uber_idle_pipeline"
  location   = "US"
}

resource "google_bigquery_table" "car_events_table" {

  dataset_id = google_bigquery_dataset.pipeline_dataset.dataset_id
  table_id   = "car_events"

  deletion_protection = false

  schema = jsonencode([
    {
      name = "cab_id"
      type = "STRING"
    },
    {
      name = "timestamp"
      type = "TIMESTAMP"
    },
    {
      name = "lat"
      type = "FLOAT"
    },
    {
      name = "lon"
      type = "FLOAT"
    },
    {
      name = "speed"
      type = "FLOAT"
    }
  ])
}

resource "google_bigquery_table" "alerts_table" {

  dataset_id = google_bigquery_dataset.pipeline_dataset.dataset_id
  table_id   = "idle_alerts"

  deletion_protection = false

  schema = jsonencode([
    {
      name = "cab_id"
      type = "STRING"
    },
    {
      name = "window_start"
      type = "TIMESTAMP"
    },
    {
      name = "window_end"
      type = "TIMESTAMP"
    },
    {
      name = "distance_m"
      type = "FLOAT64"
    }
  ])
}