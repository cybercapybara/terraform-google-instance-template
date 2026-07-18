variable "project_id" {
  description = "ID of the project in which to create the instance template."
  type        = string
}

variable "name_prefix" {
  description = "Prefix for the generated instance template name."
  type        = string
}

variable "machine_type" {
  description = "Machine type for instances created from the template."
  type        = string
  default     = "e2-medium"
}

variable "region" {
  description = "Region in which to create the instance template."
  type        = string
}

variable "image" {
  description = "Boot disk source image for the template."
  type        = string
  default     = "debian-cloud/debian-12"
}

variable "disk_size_gb" {
  description = "Size of the boot disk in GB."
  type        = number
  default     = 20

  validation {
    condition     = var.disk_size_gb >= 10
    error_message = "disk_size_gb must be at least 10 GB."
  }
}

variable "network" {
  description = "Self link or name of the network to attach instances to."
  type        = string
  default     = "default"
}

variable "subnetwork" {
  description = "Self link or name of the subnetwork to attach instances to."
  type        = string
  default     = null
}

variable "tags" {
  description = "Network tags applied to instances created from the template."
  type        = list(string)
  default     = []
}

variable "metadata" {
  description = "Metadata key/value pairs made available to instances."
  type        = map(string)
  default     = {}
}

variable "labels" {
  description = "Labels applied to the instance template."
  type        = map(string)
  default     = {}
}
