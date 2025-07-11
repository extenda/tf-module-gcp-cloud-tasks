variable "project_id" {
  type        = string
  description = "Project ID where the task queue will be created"
}

variable "region" {
  type        = string
  description = "Region where the task queue resides. If it is not provided, Terraform will use the provider default"
  default     = "europe-west1"
}

variable "name" {
  type        = string
  description = "Name of the Cloud Tasks queue"
}
