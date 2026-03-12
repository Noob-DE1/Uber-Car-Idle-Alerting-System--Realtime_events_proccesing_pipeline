resource "google_pubsub_topic" "car_events" {
  project = "project-a48dc085-0e8c-4a6e-9ca"
  name    = "car-events-topic"
}

resource "google_pubsub_topic" "idle_alerts" {
  project = "project-a48dc085-0e8c-4a6e-9ca"
  name    = "idle-alerts-topic"
}

resource "google_pubsub_subscription" "car_events_sub" {
  project = "project-a48dc085-0e8c-4a6e-9ca"
  name    = "car-events-sub"
  topic   = google_pubsub_topic.car_events.name
}

resource "google_pubsub_subscription" "alerts_sub" {
  project = "project-a48dc085-0e8c-4a6e-9ca"
  name    = "alerts-sub"
  topic   = google_pubsub_topic.idle_alerts.name
}