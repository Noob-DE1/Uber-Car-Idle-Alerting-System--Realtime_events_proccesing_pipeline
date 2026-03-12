output "pubsub_topics" {
  value = [
    google_pubsub_topic.car_events.name,
    google_pubsub_topic.idle_alerts.name
  ]
}

output "bigquery_dataset" {
  value = google_bigquery_dataset.pipeline_dataset.dataset_id
}