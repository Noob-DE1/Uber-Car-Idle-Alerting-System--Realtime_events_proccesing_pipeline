resource "google_bigquery_dataset" "pipeline_dataset" {
  dataset_id = "uber_idle_pipeline"
  location   = "US"
}

resource "google_bigquery_table" "car_events_table" {

  dataset_id = google_bigquery_dataset.pipeline_dataset.dataset_id
  table_id   = "car_events"

  schema = jsonencode([
    {
      name = "car_id"
      type = "STRING"
    },
    {
      name = "location"
      type = "STRING"
    },
    {
      name = "timestamp"
      type = "TIMESTAMP"
    }
  ])
}

resource "google_bigquery_table" "alerts_table" {

  dataset_id = google_bigquery_dataset.pipeline_dataset.dataset_id
  table_id   = "idle_alerts"

  schema = jsonencode([
    {
      name = "car_id"
      type = "STRING"
    },
    {
      name = "idle_duration"
      type = "INTEGER"
    },
    {
      name = "alert_time"
      type = "TIMESTAMP"
    }
  ])
}