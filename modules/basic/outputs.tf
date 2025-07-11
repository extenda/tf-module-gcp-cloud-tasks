output queue_id {
  description = "An identifier for the resource with format projects/{{project}}/locations/{{location}}/queues/{{name}}"
  value = google_cloud_tasks_queue.task_scheduler_basic.id
}
