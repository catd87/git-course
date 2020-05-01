resource "google_monitoring_uptime_check_config" "https" {
  display_name = "https-uptime-check-seeed"
  timeout = "60s"

  http_check {
    path = "/home/carlostorres/Escritorio/Pasantias/Monitoring"
    port = "443"
    use_ssl = true
    validate_ssl = true
  }

  monitored_resource {
    type = "uptime_url"
    labels = {
      project_id = "seeed-labs"
      host = "seeed.us"
    }
  }

  content_matchers {
    content = "example"
  }
}