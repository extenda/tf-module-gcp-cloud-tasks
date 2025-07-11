resource "google_cloud_tasks_queue" "task_scheduler_basic" {
  name     = var.name
  location = var.region
  project  = var.project_id
}
