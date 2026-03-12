resource "google_pubsub_topic" "car_events" {
  name = "car-events-topic"
}

resource "google_pubsub_topic" "idle_alerts" {
  name = "idle-alerts-topic"
}

resource "google_pubsub_subscription" "car_events_sub" {
  name  = "car-events-sub"
  topic = google_pubsub_topic.car_events.name
}

resource "google_pubsub_subscription" "alerts_sub" {
  name  = "alerts-sub"
  topic = google_pubsub_topic.idle_alerts.name
}