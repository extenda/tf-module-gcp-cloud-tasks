# tf-module-gcp-cloud-tasks

> **Deprecated:** This module is no longer maintained. Use the official Google module
> [terraform-google-cloud-tasks](https://github.com/GoogleCloudPlatform/terraform-google-cloud-tasks) instead.

The official module supports everything this module does, plus rate limits, retry config,
logging sampling, App Engine routing overrides and queue IAM.

## Usage

```hcl
terraform {
  source = "git::https://github.com/GoogleCloudPlatform/terraform-google-cloud-tasks?ref=v0.4.0"
}

inputs = {
  project_id = "my-project"
  location   = "europe-west1"
  queue_name = "my-queue"
}
```

## Migrating from `modules/basic`

| This module  | Official module |
|--------------|-----------------|
| `name`       | `queue_name`    |
| `region`     | `location` (required, no default) |
| `project_id` | `project_id`    |
| `queue_id` (output) | `id` (output) |

Existing queues must be moved in state, otherwise Terraform will destroy and recreate them
(and a deleted queue name cannot be reused for several days):

```sh
terragrunt state mv \
  google_cloud_tasks_queue.task_scheduler_basic \
  google_cloud_tasks_queue.queue
```

## Known limitations of the official module (v0.4.0)

- Requires the `google` provider `>= 3.53, < 7`.
- Only one IAM role per module call; add extra `google_cloud_tasks_queue_iam_member` resources for more.
- Queue-level `http_target` overrides do not work reliably. Set the target URL and OIDC token per task instead.
