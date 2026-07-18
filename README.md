# terraform-google-instance-template

Terraform module that manages a [Google Cloud](https://cloud.google.com/)
Compute Engine instance template (`google_compute_instance_template`). Templates
define the boot disk, machine type and network interface used by managed
instance groups.

## Usage

```hcl
module "instance_template" {
  source = "github.com/cybercapybara/terraform-google-instance-template"

  project_id   = var.project_id
  name_prefix  = "web-"
  region       = "us-central1"
  machine_type = "e2-medium"
  image        = "debian-cloud/debian-12"
}
```

A runnable example lives in [`examples/basic`](examples/basic).

## Requirements

| Name      | Version  |
|-----------|----------|
| terraform | >= 1.5   |
| google    | >= 5.0   |

## Inputs

| Name           | Description                                                | Type           | Default                    | Required |
|----------------|------------------------------------------------------------|----------------|----------------------------|:--------:|
| `project_id`   | ID of the project in which to create the template.         | `string`       | n/a                        |   yes    |
| `name_prefix`  | Prefix for the generated instance template name.           | `string`       | n/a                        |   yes    |
| `machine_type` | Machine type for instances created from the template.      | `string`       | `"e2-medium"`              |    no    |
| `region`       | Region in which to create the instance template.           | `string`       | n/a                        |   yes    |
| `image`        | Boot disk source image for the template.                   | `string`       | `"debian-cloud/debian-12"` |    no    |
| `disk_size_gb` | Size of the boot disk in GB.                               | `number`       | `20`                       |    no    |
| `network`      | Self link or name of the network.                          | `string`       | `"default"`                |    no    |
| `subnetwork`   | Self link or name of the subnetwork.                       | `string`       | `null`                     |    no    |
| `tags`         | Network tags applied to instances.                         | `list(string)` | `[]`                       |    no    |
| `metadata`     | Metadata key/value pairs.                                  | `map(string)`  | `{}`                       |    no    |
| `labels`       | Labels applied to the instance template.                   | `map(string)`  | `{}`                       |    no    |

## Outputs

| Name        | Description                             |
|-------------|-----------------------------------------|
| `id`        | Identifier of the instance template.   |
| `self_link` | URI of the instance template.          |
| `name`      | Generated name of the instance template.|

## License

[MIT](LICENSE)
