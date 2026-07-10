terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "example-namespace"
  }
}

output "namespace_name" {
  value       = kubernetes_namespace.example.metadata[0].name
  description = "Name of the created namespace"
}
