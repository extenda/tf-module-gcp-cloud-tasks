# tf-module-gcp-cloud-tasks
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.4.6 |
| google | ~> 6.20.0 |
| google-beta | ~> 6.20.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project\_id | Project ID where the jobs will be created | `string` | n/a | yes |
| region | Region where the scheduler job resides. If it is not provided, Terraform will use the provider default | `string` | `"europe-west1"` | no |
| name | The name of the task queue to be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
|  queue_id | Id of the queue |

## Usage

A scheduled job that can publish a pubsub message or a http request every X interval of time, using crontab format string.

The variable *`scheduled_jobs`* supports the following arguments:
- `name`: The name of the job.
- `project_id`: A human-readable description for the job. This string must not contain more than 500 characters.
- `region`: Describes the schedule on which the job will be executed.
