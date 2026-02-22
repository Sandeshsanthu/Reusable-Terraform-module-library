terraform {
  required_version = ">= 1.5.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = ">= 2.5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.0"
    }
  }
}

locals {
  artifact_name = "${var.app}-${var.env}"
  tags = {
    app                 = var.app
    env                 = var.env
    owner               = var.owner
    data_classification = var.data_classification
    managed_by          = "terraform"
  }
}

resource "random_id" "suffix" {
  byte_length = 3
}

resource "local_file" "artifact" {
  filename = "${path.root}/${var.out_dir}/${local.artifact_name}-${random_id.suffix.hex}.txt"
  content  = <<-EOT
  name: ${local.artifact_name}
  owner: ${var.owner}
  data_classification: ${var.data_classification}
  tags: ${jsonencode(local.tags)}
  EOT
}